# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'swagger_ui_wrapper/version'

Gem::Specification.new do |spec|
  spec.name          = "swagger_ui_wrapper"
  spec.version       = SwaggerUiWrapper::VERSION
  spec.authors       = ["lizhe"]
  spec.email         = ["markgeek@qq.com"]
  spec.summary       = %q{swagger ui rack wrapper}
  spec.description   = %q{a rack middle wrapped swagger ui assets}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rack", ">= 1.3.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
