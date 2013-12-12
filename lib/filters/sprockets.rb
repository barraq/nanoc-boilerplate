# Patch Nanoc::Filters:Sprockets to handle our
# project structure.

module Nanoc::Filters
  class Sprockets < Nanoc::Filter

    def self.environment
      environment = ::Sprockets::Environment.new(File.expand_path('.')) do |env|
        assets =  ['stylesheets', 'stylesheets/pages', 'javascripts', 'fonts']
        paths =   ['content/assets/', 'vendor/assets/' ]
        paths += paths.map{|p| assets.map{|f| "#{p}#{f}"}}.flatten

        paths.each{ |path| env.append_path path }
      end

      environment
    end
  end
end
