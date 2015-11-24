# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "weak_parameters/version"

Gem::Specification.new do |spec|
  spec.name          = "weak_parameters_sinatra"
  spec.version       = WeakParameters::VERSION
  spec.authors       = ["Isamu Arimoto"]
  spec.email         = ["isamu.a@gmail.com"]
  spec.summary       = "Add a validation filter to your sinatra app."
  spec.homepage      = "https://github.com/isamu/weak_parameters_sinatra"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "sinatra"
  spec.add_runtime_dependency "activesupport"
end
