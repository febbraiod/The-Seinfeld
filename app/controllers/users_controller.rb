
class UsersController < ApplicationController 

  get '/signup' do
    erb :'users/signup'
  end

  post '/signup' do
    user = User.new(username: params["username"], password: params["password"], email: params["email"])
    if user.save
      session[:id] = user.id
      redirect '/quotes'
    else
      redirect '/error'
    end
  end

  get '/signin' do
    erb :'users/signin'
  end

  post '/signin' do
    user = User.find_by(username: params["username"], password: params["password"])
    if user
      session[:id] = user.id
      redirect '/quotes' 
    else
      redirect '/error'
    end
  end

  get '/:username/quotes' do
    if !(user = User.find_by(username: params["username"]))
      redirect '/error'
    end

    quotes = Quote.all
    @quotes = quotes.select {|quote| quote.user_id == user.id}
    
    if @quotes[0] == nil
      redirect '/error'
    end 
    
    erb :'users/show'
  end

  get '/signout' do
    session.clear
    redirect '/'
  end

end