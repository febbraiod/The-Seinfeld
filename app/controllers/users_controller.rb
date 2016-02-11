
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

  get '/:username/quotes' do #use slug?
    #get all quotes by that user
    erb #not sure yet
  end

end