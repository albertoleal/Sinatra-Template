set :application, "myapp"
set :ip_address , "my ip"

set :scm, :git
set :repository,  "git repo"
set :branch, "master"
set :deploy_via, :remote_cache

set :user , "rails"
set :deploy_to, "/home/sinatra/#{application}"

set :shared_directory, "#{deploy_to}/shared"
set :use_sudo, false
set :group_writable, false
set :scm_verbose, true
default_run_options[:pty] = true


server :app, :web, :db,  ip_address, :primary => true

namespace :deploy do
  task :restart, :roles => :app do
    run "mkdir -p #{release_path}/tmp && touch #{release_path}/tmp/restart.txt"
  end
end
