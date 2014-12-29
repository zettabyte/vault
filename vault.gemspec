# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vault/version'

Gem::Specification.new do |spec|
  spec.name          = "vault"
  spec.version       = Vault::VERSION
  spec.authors       = ["Kendall Gifford"]
  spec.email         = ["zettabyte@gmail.com"]
  spec.summary       = %q{Write a short summary. Required.}
  spec.description   = %q{Write a longer description. Optional.}
  spec.homepage      = "https://github.com/zettabyte/vault"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler",  "~>  1.7"
  spec.add_development_dependency "rake",     "~> 10.4"
  spec.add_development_dependency "rspec",    "~>  3.1"
  spec.add_development_dependency "cucumber", "~>  1.3"
  spec.add_development_dependency "aruba",    "~>  0.6"
  spec.add_development_dependency "oj",       "~>  2.11"
  spec.add_development_dependency "yard",     "~>  0.8.7"
end
