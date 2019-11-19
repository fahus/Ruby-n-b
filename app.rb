require 'sinatra/base'
require_relative './lib/listing'

class Rubynb < Sinatra::Base
  enable :sessions

get '/' do
  erb :signup
end

get '/viewlistings' do
  @listings = Listing.all
  erb:'listings'
end

post '/signup' do
  User.add(email: params['email'], password: params['password'])
  # session[:email] = @user.email
  redirect '/confirmation'
end

get '/confirmation' do
  # @email = session[:email]
  erb:'confirmation'
end

get '/add' do
  erb :'add_listing'
end

post '/addlistings' do
  Listing.add(name: params['name'], description: params['description'], price: params['price'])
  redirect '/viewlistings'
end

run! if app_file == $0
end
