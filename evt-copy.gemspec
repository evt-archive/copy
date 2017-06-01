# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'evt-copy'
  s.version = '0.1.1.3'
  s.summary = 'Copy between structs and hashes, optionally mapping attribute names in either direction'
  s.description = ' '

  s.authors = ['The Eventide Project']
  s.email = 'opensource@eventide-project.org'
  s.homepage = 'https://github.com/eventide-project/copy'
  s.licenses = ['MIT']

  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.3.3'

  s.add_runtime_dependency 'evt-initializer'
  s.add_runtime_dependency 'evt-set_attributes'

  s.add_development_dependency 'test_bench'
end
