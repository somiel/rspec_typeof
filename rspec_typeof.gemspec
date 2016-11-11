# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec_typeof/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec_typeof"
  spec.version       = RspecTypeof::VERSION
  spec.authors       = ["Vovchuk Max"]
  spec.email         = ["vovchuk.max@gmail.com"]

  spec.summary       = %q{Add typeof matcher to Rspec}
  spec.description   = %q{Add typeof matcher to Rspec}
  spec.homepage      = "https://github.com/Somiel/rspec_typeof"

  spec.licenses      = ['MIT']
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'rspec', '~> 3.3'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 11.2"
end
