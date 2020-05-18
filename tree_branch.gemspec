# frozen_string_literal: true

require './lib/tree_branch/version'

Gem::Specification.new do |s|
  s.name        = 'tree_branch'
  s.version     = TreeBranch::VERSION
  s.summary     = 'Compare a tree structure and return the tree structure that matches'

  s.description = <<-DESCRIPTION
    This library allows you to input a tree structure (node with children), a context, and comparators then outputs you the matching tree structure.
  DESCRIPTION

  s.authors     = ['Matthew Ruggio']
  s.email       = ['mruggio@bluemarblepayroll.com']
  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.bindir      = 'exe'
  s.executables = %w[]
  s.homepage    = 'https://github.com/bluemarblepayroll/tree_branch'
  s.license     = 'MIT'

  s.required_ruby_version = '>= 2.5'

  s.add_dependency('acts_as_hashable', '~>1.0')

  s.add_development_dependency('guard-rspec', '~>4.7')
  s.add_development_dependency('pry')
  s.add_development_dependency('pry-byebug')
  s.add_development_dependency('rake', '~> 12')
  s.add_development_dependency('rspec', '~> 3.8')
  s.add_development_dependency('rubocop', '~>0.63.1')
  s.add_development_dependency('simplecov', '~>0.16.1')
  s.add_development_dependency('simplecov-console', '~>0.4.2')
end
