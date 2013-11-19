# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoafarm/version'

Gem::Specification.new do |spec|
  spec.name          = "cocoafarm"
  spec.version       = Cocoafarm::VERSION
  spec.authors       = ["Yusuke Sakurai"]
  spec.email         = ["kerokerokerop@gmail.com"]
  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = "A Project setup tool for Xcode"
  spec.homepage      = "https://github.com/keroxp/CocoaFarm"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "xcodeproj"
  spec.add_dependency "args_parser"
  spec.add_dependency "colored"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "awesome_print"
end
