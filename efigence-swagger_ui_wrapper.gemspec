# -*- encoding: utf-8 -*-
# stub: swagger_ui_wrapper 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "efigence-swagger_ui_wrapper"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["lizhe"]
  s.date = "2016-05-09"
  s.description = "a rack middle wrapped swagger ui assets"
  s.email = ["markgeek@qq.com"]
  s.files = [".gitignore", "Gemfile", "LICENSE.txt", "README.md", "Rakefile", "lib/swagger_ui_wrapper.rb", "lib/swagger_ui_wrapper/rack/middleware.rb", "lib/swagger_ui_wrapper/version.rb", "swagger_ui_wrapper.gemspec", "vendor/assets/swagger/css/print.css", "vendor/assets/swagger/css/reset.css", "vendor/assets/swagger/css/screen.css", "vendor/assets/swagger/css/style.css", "vendor/assets/swagger/css/typography.css", "vendor/assets/swagger/fonts/DroidSans-Bold.ttf", "vendor/assets/swagger/fonts/DroidSans.ttf", "vendor/assets/swagger/images/collapse.gif", "vendor/assets/swagger/images/expand.gif", "vendor/assets/swagger/images/explorer_icons.png", "vendor/assets/swagger/images/favicon-16x16.png", "vendor/assets/swagger/images/favicon-32x32.png", "vendor/assets/swagger/images/favicon.ico", "vendor/assets/swagger/images/logo_small.png", "vendor/assets/swagger/images/pet_store_api.png", "vendor/assets/swagger/images/throbber.gif", "vendor/assets/swagger/images/wordnik_api.png", "vendor/assets/swagger/index.html", "vendor/assets/swagger/lang/en.js", "vendor/assets/swagger/lang/es.js", "vendor/assets/swagger/lang/fr.js", "vendor/assets/swagger/lang/geo.js", "vendor/assets/swagger/lang/it.js", "vendor/assets/swagger/lang/ja.js", "vendor/assets/swagger/lang/pl.js", "vendor/assets/swagger/lang/pt.js", "vendor/assets/swagger/lang/ru.js", "vendor/assets/swagger/lang/tr.js", "vendor/assets/swagger/lang/translator.js", "vendor/assets/swagger/lang/zh-cn.js", "vendor/assets/swagger/lib/backbone-min.js", "vendor/assets/swagger/lib/handlebars-2.0.0.js", "vendor/assets/swagger/lib/highlight.9.1.0.pack.js", "vendor/assets/swagger/lib/highlight.9.1.0.pack_extended.js", "vendor/assets/swagger/lib/jquery-1.8.0.min.js", "vendor/assets/swagger/lib/jquery.ba-bbq.min.js", "vendor/assets/swagger/lib/jquery.slideto.min.js", "vendor/assets/swagger/lib/jquery.wiggle.min.js", "vendor/assets/swagger/lib/js-yaml.min.js", "vendor/assets/swagger/lib/jsoneditor.min.js", "vendor/assets/swagger/lib/lodash.min.js", "vendor/assets/swagger/lib/marked.js", "vendor/assets/swagger/lib/swagger-oauth.js", "vendor/assets/swagger/o2c.html", "vendor/assets/swagger/swagger-ui.js", "vendor/assets/swagger/swagger-ui.min.js"]
  s.homepage = ""
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "swagger ui rack wrapper"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, [">= 1.3.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.7"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
    else
      s.add_dependency(%q<rack>, [">= 1.3.0"])
      s.add_dependency(%q<bundler>, ["~> 1.7"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<rack>, [">= 1.3.0"])
    s.add_dependency(%q<bundler>, ["~> 1.7"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
  end
end
