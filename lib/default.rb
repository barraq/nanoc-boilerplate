require 'time'
require 'compass'
require 'nanoc-sprockets'
require 'nanoc/cachebuster'

Compass.add_project_configuration File.expand_path('config/compass.rb')
Sass.load_paths << Compass::Frameworks['compass'].stylesheets_directory