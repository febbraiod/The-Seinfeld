
class QuotesController < ApplicationController 
  
#every time a quote appears it needs to link to it's own page for voting.

  get '/quotes' do #add episode link?
    quotes = Quote.all
    @quotes = quotes.sort {|x,y| x.rating <=> y.rating}.reverse
    erb :'quotes/index'
  end

  get '/quotes/new' do
    @episodes = Episode.all
    @characters = Character.all
    erb :'quotes/new'
  end

  post '/quotes/new' do
    quote = Quote.new(content: params['content'], rating: 0)
    quote.character = Character.find_by(name: params['char'])
    quote.episode = Episode.find_by(title: params['episode'])
    quote.user_id = session[:id]
    if quote.save #you need to add guards so a quote that already exhists can't be saved
      redirect "/quotes/#{quote.id}"
    else
      redirect "/error"
    end
  end

  get '/quotes/:id' do
    @quote = Quote.find(params[:id])  # find a way to get an image of the character in here
    erb :'quotes/show'
  end

  get "/quotes/:id/update" do # add protection that says the creator of this quote is the one who can edit it.
    @quote = Quote.find(params["id"].to_i)
    @characters = Character.all
    @episodes = Episode.all
    erb :'quotes/update'
  end

  post "/quotes/:id" do #why does patch never work for me?
    quote = Quote.find(params["id"].to_i)

    if params["content"]
      quote.content = params['content']
    end

    if params['char']
      quote.character = Character.find_by(name: params['char'])
    end
    
    if params['episode']
      quote.episode = Episode.find_by(title: params['episode'])
    end

    if quote.save
      redirect "/quotes/#{quote.id}"
    else
      redirect '/error'
    end

  end

end