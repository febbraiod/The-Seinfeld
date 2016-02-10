
class UsersController < ApplicationController

#every time a quote appears it needs to link to it's own page for voting.

  get '/signup' do
    erb :'users/signup'
  end

  get '/signin' do
    erb :'users/signin'
  end

  get '/:username/quotes' do #use slug?
    #get all quotes by that user
    erb #not sure yet
  end

end