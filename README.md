SpreeBrazilianFields
====================
[![Code Climate](https://codeclimate.com/github/locomotivapro/spree_brazilian_fields/badges/gpa.svg)](https://codeclimate.com/github/locomotivapro/spree_brazilian_fields)
[![Build Status](https://semaphoreci.com/api/v1/projects/9a82867e-f2e4-4591-8e9b-49e4e1105bcc/421145/badge.svg)](https://semaphoreci.com/locomotiva/spree_brazilian_fields)      

User creation form with Brazilian properties, with CPF for individual people or CNPJ and Company Name for firms.

**ATTENTION:** This branch only works with spree_auth_devise gem.

Installing
=======

Add this line to your application's Gemfile:

    gem 'spree_brazilian_fields', github: 'locomotivapro/spree_brazilian_fields', branch: '3-0-stable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spree_brazilian_fields


And then run to copy the gems migrations to your app

    $ rails generate spree_brazilian_fields:install

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec


Copyright (c) 2012-2015 [Locomotiva.pro](http://locomotiva.pro), released under the New BSD License
