# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'stitches/version'

Gem::Specification.new do |s|
  s.name        = "stitches"
  s.version     = Stitches::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Dave Copeland']
  s.email       = ['dave@stitchfix.com', 'opensource@stitchfix.com']
  s.homepage    = "https://github.com/stitchfix/stitches"
  s.summary     = "You'll be in stitches at how easy it is to create a service at Stitch Fix"
  s.description = "You'll be in stitches at how easy it is to create a service at Stitch Fix"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- exe/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_runtime_dependency("rails")
  s.add_runtime_dependency("pg")
  s.add_development_dependency("rake")
  s.add_runtime_dependency("rspec-rails", "~> 3")
  s.add_runtime_dependency("apitome")
end
