# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'cucumber-rails'
  s.version     = '0.5.1'
  s.authors     = ["Aslak Hellesøy", "Dennis Blöte", "Rob Holland"]
  s.description = "Cucumber Generators and Runtime for Rails"
  s.summary     = "#{s.name}-#{s.version}"
  s.email       = 'cukes@googlegroups.com'
  s.homepage    = "http://cukes.info"

  s.add_dependency('cucumber', '>= 0.10.3')
  s.add_dependency('rack-test', '>= 0.5.7')
  s.add_dependency('nokogiri', '>= 1.4.4')
  s.add_dependency('capybara', '>= 1.0.0.beta1')
  s.add_development_dependency('rails', '= 3.0.8.rc2') # 3.1.0.rc1 currently breaks some features.
  s.add_development_dependency('rake', '= 0.8.7') # Until Rails 3 supports rake 0.9.0. Rakefile needs TheApp::Application.send(:include, Rake::DSL)
  s.add_development_dependency('bundler', '>= 1.0.14')
  s.add_development_dependency('aruba', '>= 0.3.6')
  s.add_development_dependency('sqlite3-ruby', '>= 1.3.3')
  s.add_development_dependency('rspec', '>= 2.6.0')
  s.add_development_dependency('rspec-rails', '>= 2.6.1')
  s.add_development_dependency('factory_girl', '>= 2.0.0.beta2')
  s.add_development_dependency('database_cleaner', '>= 0.6.7')
  s.add_development_dependency('mongoid', '>= 2.0.2')
  s.add_development_dependency('bson_ext', '>= 1.3.1')
  # s.add_development_dependency('akephalos', '>= 0.2.5')

  s.rubygems_version = ">= 1.6.1"
  s.files            = `git ls-files`.split("\n")
  s.test_files       = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables      = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.extra_rdoc_files = ["LICENSE", "README.md", "History.txt"]
  s.rdoc_options     = ["--charset=UTF-8"]
  s.require_path     = "lib"
end
