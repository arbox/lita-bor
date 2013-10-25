Gem::Specification.new do |spec|
  spec.name          = "lita-bor"
  spec.version       = "0.0.1.alpha"
  spec.authors       = ["Andrei Beliankou"]
  spec.email         = ["arbox@yandex.ru"]
  spec.description   = 'Lita handler for _bash.org_'
  spec.summary       = 'Lita handler for _bash.org_'
  spec.homepage      = "http://bu.chsta.be"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", "~> 2.5"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 2.14"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
end
