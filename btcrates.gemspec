# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'btcrates/version'

Gem::Specification.new do |spec|
  spec.name          = "btcrates"
  spec.version       = Btcrates::VERSION
  spec.authors       = ["mmplisskin"]
  spec.email         = ["mmplisskin@gmail.com"]

  spec.summary       = %q{Displays current btc rates}
  spec.description   = %q{Btc Rates makes it easy to get current bitcoin rates from a few popular exchanges.}
  spec.homepage      = "https://github.com/mmplisskin/BTC-Price-Gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency  'httparty', '>= 0.13.7'
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
end
