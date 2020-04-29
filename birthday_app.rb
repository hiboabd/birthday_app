require 'sinatra'
require 'sinatra/base'

class Birthday < Sinatra::Base
  get '/' do
    'Hello world!'
  end
end
