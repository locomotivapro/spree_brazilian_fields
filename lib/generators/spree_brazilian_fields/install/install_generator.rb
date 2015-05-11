module SpreeBrazilianFields
  module Generators
    class InstallGenerator < Rails::Generators::Base

       def add_javascripts
         append_file 'vendor/assets/javascripts/spree/frontend/all.js', "//= require spree/frontend/spree_brazilian_fields\n"
         append_file 'vendor/assets/javascripts/spree/backend/all.js', "//= require spree/backend/spree_brazilian_fields\n"
       end

       def add_stylesheets
         inject_into_file 'vendor/assets/stylesheets/spree/frontend/all.css', " *= require spree/frontend/spree_brazilian_fields\n", :before => /\*\//, :verbose => true
         inject_into_file 'vendor/assets/stylesheets/spree/backend/all.css', " *= require spree/backend/spree_brazilian_fields\n", :before => /\*\//, :verbose => true
       end

      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=spree_brazilian_fields'
      end

      def run_migrations
         run 'bundle exec rake db:migrate'
      end
    end
  end
end
