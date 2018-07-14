# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "rails-training"
set :repo_url, "git@github.com:kenstam/rails-training.git"

set :deploy_to, "/railsapp/"

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "config", "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

set :rbenv_type, :user
set :rbenv_ruby, File.read('.ruby-version').strip
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}

set :conditionally_migrate, true

set :puma_role, :web
set :puma_conf, "#{shared_path}/config/puma.rb"
set :puma_bind, "unix://#{shared_path}/tmp/sockets/#{fetch(:application)}-puma.sock"
set :puma_control_app, "1"
set :puma_default_control_app, "unix://#{shared_path}/tmp/sockets/#{fetch(:application)}-pumactl.sock"
set :puma_state, "#{shared_path}/tmp/pids/puma.state"
set :puma_pid, "#{shared_path}/tmp/pids/puma.pid"
set :puma_access_log, "#{release_path}/log/puma.error.log"
set :puma_error_log, "#{release_path}/log/puma.access.log"
set :puma_init_active_record, true
set :puma_preload_app, false
