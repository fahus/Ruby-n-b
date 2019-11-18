require 'sinatra/base'


class Rubynb < Sinatra::Base


get '/' do
  "Hello, World"
end

get '/viewlistings' do
  erb:listings
end



run! if app_file == $0
end
