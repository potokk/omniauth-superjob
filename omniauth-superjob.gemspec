$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "omniauth/superjob/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "omniauth-superjob"
  s.version     = Omniauth::Superjob::VERSION
  s.authors     = ["salkar"]
  s.email       = ["sokolov.sergey.a@gmail.com"]
  s.homepage    = "https://github.com/salkar/omniauth-superjob"
  s.summary     = "Omniauth::Superjob."
  s.description = "Omniauth::Superjob."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency 'omniauth', '~> 1.0'
  s.add_dependency 'omniauth-oauth2', '~> 1.1'
end
