require 'git'

module Jekyll
  class LastModifiedAtTag < Liquid::Tag
    def initialize(tag_name, _text, tokens)
      super
    end

    def render(context)
      # Access frontmatter variables
      site_source = context.registers[:site].source
      page = context.registers[:page]
      source = page['source']
      submodules = page['submodules']
      
      # Script-repos are accesible as submodules
      # Locate the root of the submodule and the relative path to the script
      submodule_path, script_path = find_submodule_path(submodules, source)

      # Use ruby-git to access the git log of the submodule
      if submodule_path
        submodule_source = File.join(site_source, submodule_path)
        submodule_repo = Git.open(submodule_source)
        log = submodule_repo.log.path(script_path).first
        
        if log
          formatted_date = log.date.strftime("%-d. %B %Y")
          return "#{formatted_date} by #{log.author.name} (#{log.author.email}) #{submodule_repo.repo} #{submodule_repo.dir} #{submodule_repo.current_branch} #{script_path}"
        end
        github_path = "/home/runner/work/os2borgerpc-docs/os2borgerpc-docs/assets/os2borgerpc-scripts/scripts/" + script_path
        githublog = submodule_repo.log.path(github_path).first
        if githublog
          return "#{githublog.log.date.strftime("%-d. %B %Y")}"
        end
      end
      return "Ikke tilgængelig #{submodule_repo.repo} #{submodule_repo.dir} #{submodule_repo.current_branch} #{script_path} #{script_path}"
    
    rescue => e
      puts "Debug: Error - #{e.message}"
      "Unknown"
    end

    private

    def find_submodule_path(submodules, source)
      submodules.each do |submodule|
        if source.include?(submodule)
          script_path = source.split(submodule, 2).last
          return submodule, script_path
        end
      end
      [nil, nil]
    end

  end
end

Liquid::Template.register_tag('last_modified_at', Jekyll::LastModifiedAtTag)