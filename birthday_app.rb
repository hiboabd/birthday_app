require 'sinatra'
require 'sinatra/base'
require 'date'

class Birthday < Sinatra::Base

  enable :sessions

  def birthday?
    @birthday == Date.today.strftime("%d/%m")
  end

  get '/' do
    erb(:index)
  end

  post '/decider' do
    session[:name] = params[:name]
    @birthday = params[:birthday]
    redirect '/non_birthday' unless birthday?
    redirect '/birthday'
  end

  get '/birthday' do
    @name = session[:name]
    erb(:birthday)
  end

  get '/non_birthday' do
    @name = session[:name]
    erb(:non_birthday)
  end
end
