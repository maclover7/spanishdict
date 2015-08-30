# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'SpanishDict/version'

Gem::Specification.new do |spec|
  spec.name          = "SpanishDict"
  spec.version       = SpanishDict::VERSION
  spec.authors       = ["maclover7"]
  spec.email         = ["me@jonathanmoss.me"]

  spec.summary       = "Wrapper for SpanishDict.com"
  spec.description   = "Wrapper for SpanishDict.com"
  spec.homepage      = "https://github.com/maclover7/spanishdict"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"
  spec.add_dependency "nokogiri"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
