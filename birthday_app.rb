require 'sinatra'
require 'sinatra/base'

class Birthday < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/redirect' do
    redirect '/birthday'
  end

  get '/birthday' do
    erb(:birthday_message)
  end
end
