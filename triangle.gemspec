# -*- encoding: utf-8 -*-
require File.expand_path('../lib/triangle/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["David Chapman"]
  gem.email         = ["david@isotope11.com"]
  gem.description   = %q{A Ruby gem for solving triangles using the laws of cosine and sine functions.}
  gem.summary       = %q{Any triangle can be solved using the laws of cosine and sine functions given a minimum amount of data: 3 angles, 3 sides, 2 angles and 1 side, or 2 sides and 1 angle.}
  gem.homepage      = "https://github.com/dchapman1988/triangle"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "triangle"
  gem.require_paths = ["lib"]
  gem.version       = Triangle::VERSION

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'minitest-reporters'
  gem.add_development_dependency 'mocha'
  gem.add_development_dependency 'yard'
  gem.add_development_dependency 'yardstick'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'redcarpet'
end
