require 'rubygems'
require 'sinatra'
require 'sinatra/base'
require 'myapp'

set :environment, :production


run MyApp
