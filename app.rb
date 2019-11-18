require 'sinatra/base'


class Rubynb < Sinatra::Base


get '/' do

end

get '/viewlistings' do
  erb:index
end



run! if app_file == $0
end
