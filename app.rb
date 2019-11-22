require 'sinatra/base'
require_relative './lib/listing'
require_relative './lib/user'
require_relative './lib/mail'

class Rubynb < Sinatra::Base
  enable :sessions

  get '/' do
    erb :signup
  end

  post '/signup' do
    @user = User.add(email: params['email'], password: params['password'])
    session[:email] = @user.email
    session[:user_id] = @user.id
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
    Listing.add(name: params['name'], description: params['description'], price: params['price'], start_date: params['start_date'], end_date: params['end_date'], owner_id: session[:user_id])
    redirect '/viewlistings'
  end

  get '/listing/:id' do
    @listings = Listing.all
    @object = @listings.select do |listing|
      listing.id == params[:id]
    end.first

    @user = User.where(id: @object.owner_id)
    erb:'more_detail'
  end

  get '/login' do
    @password_invalid = false
    erb :'login'

  end

  post '/login' do
    @user = User.authenticate(email: params['email'], password: params['password'])
    if @user
      session[:user_id] = @user.id
      session[:email] = @user.email
      redirect '/viewlistings'
    else
        @password_invalid = true
        erb :'login'
    end
  end

  post '/listing/select/:id' do
    @date = params[:date]
    @listings = Listing.all
    @object = @listings.select do |listing|
      listing.id == params[:id]
    end.first
    @homeowner = User.where(id: @object.owner_id)
    Mail.send(to: @homeowner.email, reservation_date: @date, guest_email: session[:email])
    erb:'select_date'
  end

  run! if app_file == $0
end
