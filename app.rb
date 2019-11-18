require 'sinatra/base'


class Rubynb < Sinatra::Base

get '/' do
  "Hello, World"
end

get '/viewlistings' do
  erb:index
end



run! if app_file == $0
end
