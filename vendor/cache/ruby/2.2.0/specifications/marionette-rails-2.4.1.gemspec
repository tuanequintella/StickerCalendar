# -*- encoding: utf-8 -*-
# stub: marionette-rails 2.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "marionette-rails"
  s.version = "2.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Godfrey Chan", "Stafford Brunk"]
  s.date = "2015-03-23"
  s.description = "Vendors Backbone.Marionette for use with the asset pipeline."
  s.email = ["godfreykfc@gmail.com", "stafford.brunk@gmail.com"]
  s.homepage = "https://github.com/chancancode/marionette-rails"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Backbone.Marionette for Rails"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.1"])
    else
      s.add_dependency(%q<railties>, [">= 3.1"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.1"])
  end
end
