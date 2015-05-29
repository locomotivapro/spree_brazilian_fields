# encoding: UTF-8
$:.push File.expand_path("../lib", __FILE__)
require 'spree_brazilian_fields/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_brazilian_fields'
  s.version     = SpreeBrazilianFields::VERSION
  s.summary     = 'Add brazilian fields to spree app'
  s.description = 'Add brazilian fields as cpf, cnpj, company_name, etc. Also add a verification if account is personal (cpf required) or bussines (cnpj and company name required)'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Denis Tierno, Fabio Esposito'
  s.email     = 'contato@locomotiva.pro'
  s.homepage  = 'http://locomotiva.pro'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 3'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'guard-rspec'
end
