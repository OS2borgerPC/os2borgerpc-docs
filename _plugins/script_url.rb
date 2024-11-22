module Jekyll
  class ScriptUrlTag < Liquid::Tag
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

      # Use the relative_url filter
      relative_url = Liquid::Template.parse("{{ '#{concatenated_path}' | relative_url }}").render(context)

      relative_url
    end
  end
end

Liquid::Template.register_tag('script_url', Jekyll::ScriptUrlTag)