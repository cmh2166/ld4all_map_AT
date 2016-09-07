$:.push File.expand_path("../lib", __FILE__)
require 'dpla/map/version'

Gem::Specification.new do |s|
  s.name        = "ld4all-map"
  s.platform    = Gem::Platform::RUBY
  s.required_ruby_version     = '>= 2.0.0'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  s.require_paths = ['lib', 'lib/ld4all', 'lib/ld4all/map', 'lib/rdf']

  s.add_dependency 'active-triples', '~>0.6.0'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'pry-doc'
  s.add_development_dependency 'factory_girl', '~>4.4.0'
  s.add_development_dependency 'bundler', '~> 1.10'
end