# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'twenty_sixteen/version'

Gem::Specification.new do |spec|
  spec.name          = "twenty_sixteen"
  spec.version       = TwentySixteen::VERSION
  spec.authors       = ["MJ Rossetti (@s2t2)"]
  spec.email         = ["s2t2mail@gmail.com"]
  spec.summary       = %q{A source for data about the 2016 United States Presidential election.}
  spec.description   = %q{A source for data about the 2016 United States Presidential election. Includes a "candidates" endpoint.}
  spec.homepage      = "https://github.com/debate-watch/twenty_sixteen"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
