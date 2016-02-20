# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "carrierwave/jpegtran/version"

Gem::Specification.new do |spec|
  spec.name          = "carrierwave-jpegtran"
  spec.version       = CarrierWave::Jpegtran::VERSION
  spec.authors       = ["DM"]
  spec.email         = ["deemox@gmail.com"]

  spec.summary       = "JPEG optimization with jpegtran"
  spec.description   = "Optimize your JPEG uploads with jpegtran"
  spec.homepage      = "https://github.com/dimko/carriewave-jpegtran"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "carrierwave",   "~> 0.8"
  spec.add_dependency "jpegtran-ruby", "~> 0.3.1"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake",    "~> 10.0"
  spec.add_development_dependency "rspec",   "~> 3.0"
  spec.add_development_dependency "pry"
end
