# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'unshuffle/version'

Gem::Specification.new do |spec|
  spec.name          = "unshuffle"
  spec.version       = Unshuffle::VERSION
  spec.authors       = ["Abhi Hiremagalur"]
  spec.email         = ["abhijit@hiremaga.com"]
  spec.description   = %q{The official command line interface for http://unshuffle.me/}
  spec.summary       = %q{The official command line interface for http://unshuffle.me/}
  spec.homepage      = "http://unshuffle.me/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"
  spec.add_dependency "rocket_pants"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock", "< 1.10"
  spec.add_development_dependency "vcr"
end
