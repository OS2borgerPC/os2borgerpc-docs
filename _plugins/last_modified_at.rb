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
        return submodule_source
        #submodule_repo = Git.open(submodule_source)
        #log = submodule_repo.log.path(script_path).first
        #if log
          #formatted_date = log.date.strftime("%-d. %B %Y")
          #return "#{formatted_date} by #{log.author.name} (#{log.author.email})"
        #end
      end
      return "Ikke tilgængelig"
    
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