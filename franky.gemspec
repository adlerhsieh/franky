# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'franky/version'

Gem::Specification.new do |spec|
  spec.name          = "franky"
  spec.version       = Franky::VERSION
  spec.authors       = ["Adler Hsieh"]
  spec.email         = ["nkj20932@hotmail.com"]
  spec.summary       = %q{Generates a minimal Sinatra project}
  spec.description   = %q{Generates a Sinatra project containing only necessary files}
  spec.homepage      = "https://github.com/nkj20932/franky"
  spec.license       = "MIT"

  # spec.files         = `git ls-files -z`.split("\x0")
  spec.files         = Dir["README.md","Gemfile","Rakefile", "test/*", "lib/*", "lib/*/*"]
  spec.executables   = "franky"
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "thor", "~> 0.19"
  spec.add_development_dependency "colorize", "~> 0"
end
