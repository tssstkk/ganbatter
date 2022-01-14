source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

gem 'active_model_serializers'
gem 'aws-sdk-s3', require: false
gem 'bootsnap', '>= 1.4.4', require: false
gem 'bootstrap-will_paginate'
gem 'clockwork'
gem 'devise'
gem 'faker'
gem 'hamlit'
gem 'image_processing'
gem 'jbuilder', '~> 2.7'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'will_paginate'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3', '~> 1.4'
  # byebugより使いやすそうなデバックGem
  gem 'pry-byebug'
  # Lintツール
  gem 'rubocop-rails', require: false
end

group :development do
  gem 'erb2haml'
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
  # デバック用
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :production do
  gem 'pg'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data'
