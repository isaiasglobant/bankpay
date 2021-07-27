source 'https://rubygems.org'
# Get the gems compatible for Heroku's Ruby Version 
ruby '2.7.3'

gem 'grape'
gem 'grape-swagger'
# gem 'grape-swagger-entity'
# gem 'goliath'
gem 'pg', '~> 1.2'
# gem 'grape-entity'
# Server
gem 'puma'

# Foreman (so we can export systemd config files)
gem 'foreman'

# Configuration
gem 'dotenv'
gem 'figaro'
gem 'settingslogic'

gem 'json'
gem 'mime-types'
gem 'newrelic_rpm'
gem 'nokogiri'
gem 'rack-cors'
# gem 'em-postgresql-adapter', :git => 'git://github.com/leftbee/em-postgresql-adapter.git'
# gem 'rack-fiber_pool',  :require => 'rack/fiber_pool'
# gem 'em-synchrony', git: 'git://github.com/igrigorik/em-synchrony.git', require: ['em-synchrony', 'em-synchrony/activerecord']

group :development do
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-rack'
  gem 'rake'
  gem 'rubocop'

  gem 'capistrano'
  gem 'capistrano-rvm'
  gem 'capistrano-bundler'
  gem 'capistrano-foreman'
  gem 'capistrano-template'
end

group :test do
  gem 'capybara'
  gem 'rack-test'
  gem 'rspec'
  gem 'selenium-webdriver'
end
