# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simpleweather/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "simpleweather-rails"
  spec.version       = Simpleweather::Rails::VERSION
  spec.authors       = ["Justin Borrego"]
  spec.email         = ["jb4560@gmail.com"]

  spec.summary       = 'integrates simpleWeather.js with Rails Asset Pipeline'
  spec.homepage      = "https://github.com/45sixty/simpleweather-rails"
  spec.license       = "MIT"



  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
