source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3', '~> 1.3.13'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby


# gem 'bundler', '~> 1.16'
gem 'jquery-rails'
gem 'bootstrap', '~> 4.0.0.beta2.1'
gem 'bcrypt', '~> 3.1', '>= 3.1.11'
gem 'rails-controller-testing', '~> 1.0', '>= 1.0.2'
gem "sms_gateway", '0.3.0', github:'rietzche/sms_gateway', branch: 'master'
gem 'carrierwave', '~> 1.2', '>= 1.2.2'
gem 'closure_tree'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara'
  gem 'rspec-rails'
  # Adds support for Capybara system testing and selenium driver
  #gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Gemfile
# for CRuby, Rubinius, including Windows and RubyInstaller
gem "sqlite3", :platform => [:ruby, :mswin, :mingw], group: [:development, :test]

# for JRuby
gem "jdbc-sqlite3", :platform => :jruby
gem 'pg', group: :production
gem 'rails_12factor', group: :production
gem 'simplecov', require: false, group: :test