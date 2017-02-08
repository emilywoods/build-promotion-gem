# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'build_promotion_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "build_promotion_tool"
  spec.version       = BuildPromotionTool::VERSION
  spec.authors       = ["Emily Woods"]
  spec.email         = ["emily.woods@theappbusiness.com"]

  spec.summary       = %q{Build promotion tool for updating and applying git tags}
  spec.homepage      = "https://github.com/KITSTABEmilyWoods/build-promotion-gem"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = ["deploy"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.license       = 'MIT'
end
