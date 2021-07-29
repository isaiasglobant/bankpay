source 'https://rubygems.org'
# Get the gems compatible for Heroku's Ruby Version
ruby '2.7.3'

# Grape framework
gem 'grape'
gem 'grape-swagger'
# Postgres Database
gem 'pg', '~> 1.2'
# Server
gem 'puma'
# Foreman (so we can export systemd config files)
gem 'foreman'

# Configuration
gem 'dotenv'
gem 'figaro'
gem 'settingslogic'

# ORM
gem 'activerecord', '~> 6.0.4'
gem 'standalone_migrations', '~> 6.0.0'

gem 'json'
gem 'nokogiri'
gem 'rack-cors'

gem 'httparty'

gem 'dry-validation'

gem 'pry'

group :development do
  gem 'rake'
end

group :development, :test do
end

group :test do
  gem 'capybara'
  gem 'rack-test'
  gem 'rspec'
  gem 'selenium-webdriver'
end
