# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fitzcamping/version'

Gem::Specification.new do |spec|
  spec.name          = "fitzcamping"
  spec.version       = Fitzcamping::VERSION
  spec.authors       = ["Alex Reis"]
  spec.email         = ["alex@alexmreis.com"]
  spec.description   = "Command line utility for posting campfire notifications"
  spec.summary       = "Simple Campfire CLI"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "tinder"
end
