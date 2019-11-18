require 'sinatra/base'
require 'listings'

class Rubynb < Sinatra::Base

get '/' do
  "Hello, World"
end

get '/viewlistings' do
  @listings = Listing.all
  erb:'listings'
end



run! if app_file == $0
end
