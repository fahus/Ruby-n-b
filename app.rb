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



run! if app_file == $0
end
