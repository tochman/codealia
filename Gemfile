source 'https://rubygems.org'
ruby '2.1.0'
gem 'rails', '4.0.2'

# Use PostgreSQL
gem 'pg'
gem 'sass-rails', '~> 4.0.0'
gem 'bootstrap-sass' # JS Bootstrap library support
gem 'bootstrap-sass-extras'
gem 'font-awesome-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

group :doc do
  gem 'sdoc', require: false
end

group :development, :test do
  gem 'rspec-rails'
  gem 'capybara' # Simulates user actions for cucumber
  gem 'cucumber-rails', :require => false # Cucmber features
  gem 'capybara-webkit'  # Headless driver for capybara
  gem 'selenium-webdriver' # Headful driver for capybara
  gem 'poltergeist'  # yet another headless driver for capybara
  gem 'webrat'  # Another Headless driver for capybara
  gem 'launchy' # Opens capybara response in your browser on save_and_open_page
  gem 'database_cleaner'  # Provides strategies for cleaning up the test db after test runs
  gem 'zeus', '0.13.4.pre2' # rails preloading environment (the only ver that works with RubyMine)
  gem 'webmock' # mocking external net connections
  gem 'delorean' #Time jumping
  gem 'better_errors'
end

group :production do
  gem 'rails_12factor'
end
