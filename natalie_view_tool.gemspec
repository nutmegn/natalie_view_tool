# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "natalie_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "natalie_view_tool"
  spec.version       = NatalieViewTool::VERSION
  spec.authors       = ["Cottonwood Devcamp"]
  spec.email         = ["cottonwood@devcamp.com"]

  spec.summary       = %q{Various view specific methods for applications I use.}
  spec.description   = %q{Provides genertated HTML data for Rails application.}
  spec.homepage      = "https://devcamp.com"
  spec.license       = "MIT"
  
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
