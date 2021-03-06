# encoding: utf-8
source 'http://rubygems.org'
ruby '1.9.3'

def linux_only(require_as)
  RbConfig::CONFIG['host_os'] =~ /linux/ ? require_as : false
end
# Mac OS X
def darwin_only(require_as)
  RbConfig::CONFIG['host_os'] =~ /darwin/ ? require_as : false
end

gem 'rails', '4.2.1'
gem 'haml', '4.0.6'
gem 'will_paginate', '3.0.7'
gem 'formtastic', '3.1.3'
gem 'devise', '3.4.1'
gem 'devise-encryptable', '0.2.0'
gem 'localized_country_select', '0.9.11'
gem 'brhelper', '3.3.0'
gem 'seed-fu', '2.3.5'
gem 'acts-as-taggable-on', '3.5.0'
gem 'cancan', '1.6.10'
gem 'acts_as_commentable', '4.0.2'
gem 'state_machine', '1.2.0'
gem 'validates_existence', '0.9.2'
gem 'airbrake', '4.1.0'
gem 'aws-ses', '0.6.0', require: 'aws/ses'
gem 'mysql2', '0.3.18'
gem 'doorkeeper', '2.1.1'
gem 'newrelic_rpm'

gem 'jquery-rails', '4.0.3'
gem 'sass-rails', '5.0.3'
gem 'coffee-rails', '4.1.0'
gem 'jquery-ui-rails', '5.0.3'
gem 'therubyracer', '0.12.2'
gem 'yui-compressor', '0.12.0'
gem 'fancybox-rails', '0.2.1'
gem 'uglifier', '2.7.1'

gem 'goalie', git: 'https://github.com/hugocorbucci/goalie.git'

platforms :ruby do
  gem 'RedCloth', '4.2.9', require: 'redcloth'
end

group :development do
  gem 'capistrano', '3.4.0', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', require: false
  gem 'travis-lint'
  gem 'foreman'
  gem 'bullet'
  gem 'lol_dba', '1.6.4' # 1.6.6 requires ruby 2
  gem 'debugger'
  gem 'web-console'
end

group :test do
  gem 'mocha'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'simplecov'
  gem 'email_spec'
  gem 'codeclimate-test-reporter', require: nil
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'rspec-its'
  gem 'rspec-collection_matchers'
  gem 'guard-rspec'
  gem 'pry-rails'
  gem 'rb-fsevent', require: darwin_only('rb-fsevent')
  gem 'terminal-notifier-guard', require: darwin_only('terminal-notifier-guard')
  gem 'rb-inotify', require: linux_only('rb-inotify')
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'konacha'
  gem 'sprockets', '< 3.0' # Konacha 3.3.0 cannot handle sprockets 3 yet
  gem 'guard-konacha-rails'
  gem 'poltergeist', require: 'capybara/poltergeist'
  gem 'selenium-webdriver'
end
