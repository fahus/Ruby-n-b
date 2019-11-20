require 'sinatra/base'
require_relative './lib/listing'
require_relative './lib/user'

class Rubynb < Sinatra::Base
  enable :sessions

get '/' do
  erb :signup
end

post '/signup' do
  @user = User.add(email: params['email'], password: params['password'])
  session[:email] = @user.email
  redirect '/confirmation'
end

get '/confirmation' do
  @email = session[:email]
  erb:'confirmation'
end

get '/viewlistings' do
  @listings = Listing.all
  erb:'listings'
end

get '/add' do
  erb :'add_listing'
end

post '/addlistings' do
  Listing.add(name: params['name'], description: params['description'], price: params['price'], start_date: params['start_date'], end_date: params['end_date'])
  redirect '/viewlistings'
end

get '/listing/:id' do
  @listings = Listing.all
  @object = @listings.select do |listing|
    listing.id == params[:id]
  end.first
  erb:'more_detail'
end




run! if app_file == $0
end
