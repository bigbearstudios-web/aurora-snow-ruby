# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = 'aurora-snow'
  spec.version = '0.0.1'
  spec.authors = 'Stuart Farnaby, Big Bear Studios'
  spec.license = 'MIT'
  spec.homepage = 'https://gitlab.com/big-bear-studios-open-source/aurora-snow-ruby/'
  spec.summary = ''

  spec.required_ruby_version = '>= 2.5'

  spec.files = ['lib/aurora_snow.rb']
  spec.files += Dir['lib/**/*.rb']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rspec', '3.4.0'
  spec.add_development_dependency 'simplecov', '0.22.0'
end
