# encoding: utf-8

module Nanoc::Helpers

  # Contains functions for layout.
  module Layout

    require 'nanoc/helpers/html_escape'
    include Nanoc::Helpers::HTMLEscape

    def page_stylesheet_tag(media: :all)
      css_identifier = File.join('/assets/stylesheets/pages', @item.identifier).to_s

      if css_item = @items.at(css_identifier)
        "<link href='#{h css_item.path}' media='#{media}' rel='stylesheet'>"
      end
    end

    def page_javascript_tag(media: :all)
      js_identifier = File.join('/assets/javascripts/pages', @item.identifier).to_s

      if js_item = @items.at(js_identifier)
        "<script src='#{h js_item.path}'></script>"
      end
    end
  end
end