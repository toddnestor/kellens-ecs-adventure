# frozen_string_literal: true

ruby '2.6.3'

source 'https://rubygems.org'
git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem 'newrelic_rpm'
gem 'pry'
gem 'puma', '~> 3.12'
gem 'rake'
gem 'rack-test'
gem "mocha"
gem 'sinatra', '~> 2.1'
gem 'sinatra-contrib'

group :development do
  gem "pry-remote"
  gem 'rubocop-rails', require: false
end

group :development, :test do
  gem 'awesome_print'
end
