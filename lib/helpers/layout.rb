# encoding: utf-8

module Nanoc::Helpers

  # Contains functions for layout.
  module Layout

    require 'nanoc/helpers/html_escape'
    include Nanoc::Helpers::HTMLEscape

    def page_stylesheet_tag(media: :all)
      puts "checking for #{@item.identifier}"

      css_identifier = File.join('/assets/css/pages', @item.identifier).to_s

      if css_item = @items.at(css_identifier)
        "<link href='#{h css_item.path}' media='#{media}' rel='stylesheet'>"
      end
    end
  end
end