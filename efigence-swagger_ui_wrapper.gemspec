# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'swagger_ui_wrapper/version'

Gem::Specification.new do |spec|
  spec.name          = "efigence-swagger_ui_wrapper"
  spec.version       = SwaggerUiWrapper::VERSION
  spec.authors       = ["lizhe"]
  spec.email         = ["markgeek@qq.com"]
  spec.summary       = %q{swagger ui rack wrapper}
  spec.description   = %q{a rack middle wrapped swagger ui assets}
  spec.homepage      = ""
  spec.license       = "MIT"

  # spec.files         = `git ls-files -z`.split("\x0")
  spec.files         = [".gitignore", "Gemfile", "LICENSE.txt", "README.md", "Rakefile", "efigence-swagger_ui_wrapper.gemspec", "lib/swagger_ui_wrapper.rb", "lib/swagger_ui_wrapper/rack/middleware.rb", "lib/swagger_ui_wrapper/version.rb", "vendor/assets/swagger/css/print.css", "vendor/assets/swagger/css/reset.css", "vendor/assets/swagger/css/screen.css", "vendor/assets/swagger/css/style.css", "vendor/assets/swagger/css/typography.css", "vendor/assets/swagger/fonts/DroidSans-Bold.ttf", "vendor/assets/swagger/fonts/DroidSans.ttf", "vendor/assets/swagger/images/collapse.gif", "vendor/assets/swagger/images/expand.gif", "vendor/assets/swagger/images/explorer_icons.png", "vendor/assets/swagger/images/favicon-16x16.png", "vendor/assets/swagger/images/favicon-32x32.png", "vendor/assets/swagger/images/favicon.ico", "vendor/assets/swagger/images/logo_small.png", "vendor/assets/swagger/images/pet_store_api.png", "vendor/assets/swagger/images/throbber.gif", "vendor/assets/swagger/images/wordnik_api.png", "vendor/assets/swagger/index.html", "vendor/assets/swagger/lang/en.js", "vendor/assets/swagger/lang/es.js", "vendor/assets/swagger/lang/fr.js", "vendor/assets/swagger/lang/geo.js", "vendor/assets/swagger/lang/it.js", "vendor/assets/swagger/lang/ja.js", "vendor/assets/swagger/lang/pl.js", "vendor/assets/swagger/lang/pt.js", "vendor/assets/swagger/lang/ru.js", "vendor/assets/swagger/lang/tr.js", "vendor/assets/swagger/lang/translator.js", "vendor/assets/swagger/lang/zh-cn.js", "vendor/assets/swagger/lib/backbone-min.js", "vendor/assets/swagger/lib/handlebars-2.0.0.js", "vendor/assets/swagger/lib/highlight.9.1.0.pack.js", "vendor/assets/swagger/lib/highlight.9.1.0.pack_extended.js", "vendor/assets/swagger/lib/jquery-1.8.0.min.js", "vendor/assets/swagger/lib/jquery.ba-bbq.min.js", "vendor/assets/swagger/lib/jquery.slideto.min.js", "vendor/assets/swagger/lib/jquery.wiggle.min.js", "vendor/assets/swagger/lib/js-yaml.min.js", "vendor/assets/swagger/lib/jsoneditor.min.js", "vendor/assets/swagger/lib/lodash.min.js", "vendor/assets/swagger/lib/marked.js", "vendor/assets/swagger/lib/swagger-oauth.js", "vendor/assets/swagger/o2c.html", "vendor/assets/swagger/swagger-ui.js", "vendor/assets/swagger/swagger-ui.min.js"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rack", ">= 1.3.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
