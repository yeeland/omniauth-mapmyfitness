# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "omniauth-mapmyfitness"
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yeeland Chen"]
  s.date = "2012-12-26"
  s.description = "OmniAuth strategy for authenticating against MapMyFitness API 3's Oauth 1.0 implementation"
  s.email = "yeeland.chen@mapmyfitness.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "lib/omniauth-mapmyfitness.rb",
    "lib/omniauth/strategies/mapmyfitness.rb",
    "spec/omniauth-mapmyfitness_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/yeeland/omniauth-mapmyfitness"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "OmniAuth strategy for MapMyFitness"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.3"])
      s.add_runtime_dependency(%q<omniauth-oauth>, ["~> 1.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.1.3"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<multi_json>, ["~> 1.3"])
      s.add_dependency(%q<omniauth-oauth>, ["~> 1.0"])
      s.add_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.1.3"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<multi_json>, ["~> 1.3"])
    s.add_dependency(%q<omniauth-oauth>, ["~> 1.0"])
    s.add_dependency(%q<rspec>, ["~> 2.8.0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.1.3"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end
