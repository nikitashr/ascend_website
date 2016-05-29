source 'https://rubygems.org'

gem 'rails', '4.1.8'
gem 'sass-rails', '>= 3.2'
gem 'bootstrap-sass'
gem 'autoprefixer-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyracer',  platforms: :ruby

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'dotenv-rails', :groups => [:development, :test], :require => 'dotenv/rails-now'
gem 'recaptcha', require: 'recaptcha/rails'

gem 'geocoder'
gem 'gmaps4rails'
gem 'underscore-rails'

gem 'spring',        group: :development
gem 'puma'
# gem 'pg'
# Since we do not use database at all, we do not need postgres,
# And to make it easy, we just write sqlite3 in config/database.yml
# that means sqlite3 gem should be available here, not inside development
gem 'sqlite3'

group :development, :test do
    gem 'capistrano',       '~> 3.5', require: false
    gem 'capistrano-rvm',             require: false
    gem 'capistrano-rails', '~> 1.1', require: false
    gem 'capistrano-bundler',         require: false
    gem 'capistrano3-puma',           require: false
end