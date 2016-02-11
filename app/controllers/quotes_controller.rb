
class QuotesController < ApplicationController 
  
#every time a quote appears it needs to link to it's own page for voting.

  get '/quotes' do
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
    quote = Quote.new(content: params['content'])
    quote.character = Character.find_by(name: params['char'])
    quote.episode = Episode.find_by(title: params['episode'])
    quote.user_id = session[:id]
    if quote.save == false
      redirect '/error'
    else
      redirect '/quotes' #change to the quote :id page
    end
  end

  get '/quotes/:id' do
    @quote = Quote.find(params[:id])
    erb :'quotes/show'
  end

  get '/quotes/:id/update' do
    @quote = Quote.find(params[:id])
    erb :'quotes/update'
  end

  patch '/quotes/:id/update' do
    #update quote
    #redirect to quote page
  end

end