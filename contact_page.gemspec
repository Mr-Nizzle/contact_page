$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "contact_page/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "contact_page"
  s.version     = ContactPage::VERSION
  s.authors     = ["Mr. Nizzle"]
  s.email       = ["nizzle@nizzledev.com"]
  s.homepage    = "https://rubygems.org/gems/contact_page"
  s.summary     = "A simple contact page rails mountable engine"
  s.description = "Adds a simple contact page to your existing rails application"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
