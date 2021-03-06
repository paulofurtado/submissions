# encoding: UTF-8
# config valid only for Capistrano 3.4.0
lock '3.4.0'

set :stages, %w(vagrant staging production 10.11.12.16 107.170.116.137 162.243.121.252)
set :default_stage, 'vagrant'

set :rails_env,           'production'
set :keep_releases,       5

set :application,         'submissions'
SSHKit.config.command_map[:rake]  = 'bundle exec rake' #8
SSHKit.config.command_map[:rails] = 'bundle exec rails'

set :scm,                 :git
set :repo_url,            'git://github.com/agile-alliance-brazil/submissions.git'
set :scm_verbose,         true

set :deploy_to,           '/srv/apps/submissions'
set :deploy_via,          :remote_cache

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# Default value for :linked_files is []
set :linked_files, %w{config/database.yml config/config.yml config/newrelic.yml}

# Default value for linked_dirs is []
set :linked_dirs, %w{bin log certs tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }
