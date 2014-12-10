# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "sir-trevor-rails"
  s.version = "0.2.4"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andrew Sprinz", "Chris Bell"]
  s.date = "2012-08-15"
  s.description = "A structured text editor."
  s.email = "chris@madebymany.com"
  s.homepage = "https://github.com/madebymany/sir-trevor-rails"
  s.require_paths = ["lib"]
  s.rubyforge_project = "sir-trevor-rails"
  s.rubygems_version = "2.0.14"
  s.summary = "sir-trevor-rails-0.2.4"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.7"])
      s.add_runtime_dependency(%q<rails>, [">= 3.0.7"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
      s.add_runtime_dependency(%q<redcarpet>, ["~> 2.0.1"])
      s.add_runtime_dependency(%q<twitter-text>, ["~> 1.4"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.0.7"])
      s.add_dependency(%q<rails>, [">= 3.0.7"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
      s.add_dependency(%q<redcarpet>, ["~> 2.0.1"])
      s.add_dependency(%q<twitter-text>, ["~> 1.4"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.0.7"])
    s.add_dependency(%q<rails>, [">= 3.0.7"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
    s.add_dependency(%q<redcarpet>, ["~> 2.0.1"])
    s.add_dependency(%q<twitter-text>, ["~> 1.4"])
  end
end
