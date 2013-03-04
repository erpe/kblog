$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "kblog/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "kblog"
  s.version     = Kblog::VERSION
  s.authors     = ["rene paulokat"]
  s.email       = ["rene@so36.net"]
  s.homepage    = "http://www.kluuu.com"
  s.summary     = "a simplistic blog engine for rails"
  s.description = "Kblog is a very lightweight mountable blog-engine for rails\nprovides simple helper in your views."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.0"
  s.add_dependency "sass"
  s.add_dependency 'will_paginate'
  s.add_dependency 'RedCloth'
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
