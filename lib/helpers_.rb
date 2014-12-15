# Nanoc provided helpers
include Nanoc::Helpers::Blogging
include Nanoc::Helpers::Tagging
include Nanoc::Helpers::Rendering
include Nanoc::Helpers::Capturing
include Nanoc::Helpers::LinkTo
include Nanoc::Helpers::XMLSitemap

# Community helpers
include Nanoc::Sprockets::Helper
include Nanoc::Helpers::CacheBusting

# Custom helpers
include Nanoc::Helpers::Utils
include Nanoc::Helpers::Post
include Nanoc::Helpers::Layout

# Define custom Sprockets environments
Nanoc::Sprockets::Helper.configure do |config|
  config.environment = ::Sprockets::Environment.new(File.expand_path('.')) do |env|
    # load defaults paths
    Nanoc::Sprockets::Helper::DEFAULT_PATHS.each { |path| env.append_path path }
    # load extra paths
    env.append_path 'bower'
  end
end