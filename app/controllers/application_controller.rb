class ApplicationController < Sinatra::Base


  configure do
      enable :sessions
      set :session_secret, "billy"
      set :public_folder, 'public'
      set :views, 'app/views'
  end
  
  get '/' do
    erb :welcome
  end

  get '/error' do
    erb :error
  end



end
