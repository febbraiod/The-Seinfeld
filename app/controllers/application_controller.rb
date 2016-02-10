class ApplicationController < Sinatra::Base


  set :views, Proc.new { File.join(root, "../views/") } 
  # I defintely understand this is redirecting the default location re: where sinatra looks for views, but i can't quite read the code literally.

  get '/' do
    erb :welcome
  end

  get '/error' do
    erb :error
  end



end
