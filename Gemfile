# frozen_string_literal: true

source "https://rubygems.org"

gem "rails", "~> 8.0.2"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"
gem "bootsnap", require: false
gem "kamal", require: false
gem "thruster", require: false
gem "sassc-rails"
gem "devise"
gem "bootstrap-sass", "~> 3.4.1"
gem "sprockets-rails", "~> 3.4"
gem "jquery-rails"

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem 'rspec-rails'
  gem 'rubycritic'
  gem 'super_awesome_print'
  gem 'annotate'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'faker'
  gem 'shoulda-matchers'
  gem "guard"
  gem "guard-livereload", require: false
  gem "rack-livereload"
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
