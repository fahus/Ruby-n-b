require 'sinatra/base'
require_relative './lib/listing'

class Rubynb < Sinatra::Base

get '/' do
  erb :index
end

get '/viewlistings' do
  @listings = Listing.all
  erb:'listings'
end

get '/add' do
  erb :'add_listing'
end

post '/addlistings' do
  Listing.add(name: params['name'], description: params['description'], price: params['price'])
  redirect ('/viewlistings')
end


get '/more_detail' do
  erb:'more_detail'
end


run! if app_file == $0
end
