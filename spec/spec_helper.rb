require 'rubygems'
require 'sinatra'
require 'sinatra/base'
require 'rack/test'
require 'spec'
require 'spec/autorun'
require 'spec/interop/test'
require 'myapp'

Spec::Runner.configure do |conf|
  conf.include Rack::Test::Methods
end

def app
  MyApp
end

# setting up my test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

