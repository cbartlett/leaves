# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "leaves/version"

Gem::Specification.new do |s|
  s.name        = "leaves"
  s.version     = Leaves::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Colin A. Bartlett"]
  s.email       = ["colin@colinabartlett.com"]
  s.homepage    = "http://colinabartlett.com"
  s.summary     = "shows you things you shouldn't commit"
  s.description = "run rake leaves before you commit to show you things you shouldn't leave in"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
