require 'sinatra'
require 'sinatra/base'
require 'date'
require './lib/birthday'

class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/decider' do
    session[:name] = params[:name]
    session[:birthday] = params[:birthday]
    @birthday = session[:birthday]
    redirect '/non_birthday' unless Calculate.new.birthday?(@birthday)
    redirect '/birthday'
  end

  get '/birthday' do
    @name = session[:name]
    erb(:birthday)
  end

  get '/non_birthday' do
    @birthday = session[:birthday]
    @days = Calculate.new.days_left(@birthday)
    @name = session[:name]
    erb(:non_birthday)
  end
end
