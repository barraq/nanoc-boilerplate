# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'nanoc' do
  watch('nanoc.yaml') # Change this to config.yaml if you use the old config file name
  watch('Rules')
  watch(%r{^(content|layouts|lib)/.*$})
end

guard 'livereload', :hostname => 'localhost', :port => '35729'  do
  watch(%r{content/.+\.(erb|haml|md|markdown|html|yaml|txt|sass|scss|css)})
  watch(%r{layouts/.+\.(erb|haml|md|markdown|html|yaml)})
end
