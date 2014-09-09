# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wykoponrails/version'

Gem::Specification.new do |spec|
  spec.name          = "wykoponrails"
  spec.version       = Wykoponrails::VERSION
  spec.authors       = ["Tomasz Panek"]
  spec.email         = ["joachimsantana@gmail.com"]
  spec.summary       = %q{ WykopOnRails - Ruby wrapper for Wykop API }
  spec.description   = %q{Gem supported API Wykop.pl }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency "httparty", "0.13.1"
end
