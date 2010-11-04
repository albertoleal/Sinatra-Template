require 'rubygems'
require 'sinatra/base'
require 'sqlite3'
require 'dm-core'
require 'dm-timestamps'
require 'dm-migrations'
require 'sinatra/flash'


class MyApp < Sinatra::Base
  set :sessions, true

  get '/' do
	@title = "Hello World!!"
	erb :welcome
  end
end
