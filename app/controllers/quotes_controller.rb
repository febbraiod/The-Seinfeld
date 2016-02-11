class QuotesController < ApplicationController 

  get '/quotes' do
    if !session["id"]
      redirect '/error'
    end
    @user = User.find(session["id"]) 
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
    if params['char']
      quote.character = Character.find_by(name: params['char'])
    elsif params['new_char']
      char = Character.find_or_create_by(name: params['new_char'])
      quote.character = char
    end

    quote.episode = Episode.find_by(title: params['episode'])
    quote.user_id = session[:id]
    if !Quote.find_by(content: params['content']) && quote.save
      redirect "/quotes/#{quote.id}"
    else
      redirect "/error"
    end
  end

  get '/quotes/:id' do
    @quote = Quote.find(params[:id])
    erb :'quotes/show'
  end

  post '/quotes/:id' do
    @quote = Quote.find(params[:id])

    if params['upvote'] == 'on'
      @quote.rating += 1
      @quote.save
    end

    if params['downvote'] == 'on'
      @quote.rating -= 1
      @quote.save
    end

    redirect '/quotes'
  end

  get "/quotes/:id/update" do
    @quote = Quote.find(params["id"].to_i)

    if @quote.user_id != session[:id]
      redirect '/error'
    end

    @characters = Character.all
    @episodes = Episode.all
    erb :'quotes/update'
  end

  post "/quotes/:id/update" do #why does patch never work for me?
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