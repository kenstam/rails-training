set :stage, :qa
set :rails_env, :qa
set :rack_env, :qa
set :branch, ENV["REVISION"] || ENV["BRANCH_NAME"] || "master"
set :puma_threads, [0,8]
set :puma_workers, 2

server "64.137.228.12", user: "deploy", roles: %w{app web db}
