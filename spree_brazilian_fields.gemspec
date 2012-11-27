# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_brazilian_fields'
  s.version     = '1.1.2'
  s.summary     = 'Add brazilian fields to spree app'
  s.description = 'Add brazilian fields and a verification if account is personal (cpf required) or bussines (cnpj and company name required)'
  s.required_ruby_version = '>= 1.8.7'

  s.author    = 'Denis Tierno'
  s.email     = 'de.tierno@gmail.com'
  s.homepage  = 'http://locomotiva.pro'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.1.2'
  s.add_dependency 'spree_auth', '~> 1.1.2'

  s.add_development_dependency 'capybara', '1.0.1'
  s.add_development_dependency 'factory_girl', '~> 2.6.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'guard-rspec', '~> 0.5.0'
end
