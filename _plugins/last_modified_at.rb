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
      page_url = page['url']
      source = page['source']
      submodules = page['submodules']
      submodule = ""

      if submodules
        submodules.each do |sub|
          if page_url.include?(sub)
            submodule = sub
          end
        end
      end

      # Concatenate submodule and source
      concatenated_path = submodule + source
      
      # Script-repos are accesible as submodules
      # Locate the root of the submodule and the relative path to the script
      # Use ruby-git to access the git log of the submodule
      if submodule
        submodule_source = File.join(site_source, submodule)
        submodule_repo = Git.open(submodule_source)
        log = submodule_repo.log.path(source).first
        
        if log
          formatted_date = log.date.strftime("%-d. %B %Y")
          return "#{formatted_date} by #{log.author.name} (#{log.author.email})"
        end
      end
      return "Ikke tilgængelig"
    
    rescue => e
      puts "Debug: Error - #{e.message}"
      "Unknown"
    end
  end
end

Liquid::Template.register_tag('last_modified_at', Jekyll::LastModifiedAtTag)