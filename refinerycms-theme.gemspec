# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'refinery/theme/version'

Gem::Specification.new do |spec|
  spec.name          = "refinerycms-theme"
  spec.version       = Refinery::Theme::VERSION
  spec.authors       = ["Samuel Seay", "Philip Arndt"]
  spec.email         = ["sam@manuka.co"]

  spec.summary       = %q{Administration theme for Refinery CMS}
  spec.description   = %q{This gem provides a nice administration theme for Refinery CMS}
  spec.homepage      = "https://manuka.co"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
                         f.match(%r{^(test|spec|features)/})
                       end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
