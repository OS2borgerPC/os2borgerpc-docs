module Jekyll
  class ReadScriptContentTag < Liquid::Tag
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

      file_path = File.join(site_source, concatenated_path)
      if File.exist?(file_path)
        File.read(file_path)
      else
        "File not found: #{@file_path}"
      end
    end
  end
end

Liquid::Template.register_tag('read_script_content', Jekyll::ReadScriptContentTag)