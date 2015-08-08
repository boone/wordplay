require_relative "lib/wordplay/version"

Gem::Specification.new do |s|
  s.name         = "wordplay"
  s.version      = Wordplay::VERSION
  s.summary      = "Methods for words."
  s.description  = "Some interesting methods to use on words."
  s.authors      = ["Mike Boone"]
  s.email        = "mike@boonedocks.net"
  s.homepage     = "https://github.com/boone/wordplay"
  s.license      = "MIT"

  s.files        = Dir["Gemfile", "LICENSE.txt", "Rakefile", "README.md",
                       "examples/**/*", "lib/**/*", "spec/**/*"]
  s.require_path = "lib"

  s.add_development_dependency "rspec", "~> 3.2", ">= 3.2.0"
end
