# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'subnets/version'

Gem::Specification.new do |spec|
  spec.name          = "subnets"
  spec.version       = Subnets::VERSION
  spec.authors       = ["Eric Herot"]
  spec.email         = ["eric.github@herot.com"]
  spec.description   = %q{Succinctly print VPC subnets}
  spec.summary       = spec.description
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency 'fog', '>= 1.12.1'
end
