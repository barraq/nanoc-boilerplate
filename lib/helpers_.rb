# Nanoc provided helpers
include Nanoc::Helpers::Blogging
include Nanoc::Helpers::Tagging
include Nanoc::Helpers::Rendering
include Nanoc::Helpers::Capturing
include Nanoc::Helpers::LinkTo
include Nanoc::Helpers::XMLSitemap

# Community helpers
include Nanoc::Helpers::Sprockets
include Nanoc::Helpers::CacheBusting

# Custom helpers
include Nanoc::Helpers::Utils
include Nanoc::Helpers::Layout

Nanoc::Helpers::Sprockets.configure do |config|
  config.environment = Nanoc::Filters::Sprockets.environment
  config.prefix      = '/assets'
  config.digest      = true

  # Force to debug mode in development mode
  # Debug mode automatically sets
  # expand = true, digest = false, manifest = false
  config.debug       = true #if development?
end