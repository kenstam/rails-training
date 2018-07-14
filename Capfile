require "capistrano/setup"
require "capistrano/deploy"
require 'capistrano/git_copy'
  install_plugin Capistrano::GitCopy::SCM
require "capistrano/rbenv"
require "capistrano/rails"
require 'capistrano/puma'
  install_plugin Capistrano::Puma

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
