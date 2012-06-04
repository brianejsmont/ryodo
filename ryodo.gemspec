# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ryodo"
  s.version = "0.1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Christoph Grabo"]
  s.date = "2012-06-04"
  s.description = "ry\u{14d}do\u{3010}\u{9818}\u{571f}\u{3011} \u{308a}\u{3087}\u{3046}\u{3069} \u{2014} A domain name parser gem using public suffix list (provided by publicsuffix.org/mozilla)"
  s.email = "chris@dinarrr.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rbenv-gemsets",
    ".rbenv-version",
    ".rspec",
    ".ruby-version",
    ".travis.yml",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "checks/matching.rb",
    "data/suffix.dat",
    "lib/ryodo.rb",
    "lib/ryodo/convenience.rb",
    "lib/ryodo/convenience/.u.rb",
    "lib/ryodo/domain.rb",
    "lib/ryodo/ext/string.rb",
    "lib/ryodo/ext/uri.rb",
    "lib/ryodo/methods.rb",
    "lib/ryodo/parser.rb",
    "lib/ryodo/rule.rb",
    "lib/ryodo/rule_set.rb",
    "lib/ryodo/suffix_list.rb",
    "lib/ryodo/suffix_list_fetcher.rb",
    "ryodo.gemspec",
    "spec/_files/mozilla_effective_tld_names.dat",
    "spec/ryodo/suffix_list_fetcher_spec.rb",
    "spec/ryodo/suffix_list_spec.rb",
    "spec/ryodo_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/asaaki/ryodo"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "ry\u{14d}do\u{3010}\u{9818}\u{571f}\u{3011} \u{308a}\u{3087}\u{3046}\u{3069} \u{2014} A domain name parser using public suffix list"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<fakeweb>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<pry-doc>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<fakeweb>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<pry-doc>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<fakeweb>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<pry-doc>, [">= 0"])
  end
end

