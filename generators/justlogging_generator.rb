class JustloggingGenerator < Rails::Generator::Base

def manifest
  record do |m|
    m.directory 'config/initializers'
    m.file 'justlogging.rb', 'config/initializers/justlogging.rb'
  end
end