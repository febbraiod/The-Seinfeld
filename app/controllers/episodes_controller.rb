class EpisodesController < ApplicationController 

  get '/episodes' do
    quotes = Quote.all
    @quotes = quotes.sort {|x,y| x.episode_id <=> y.episode_id}
    erb :'episodes/index'
  end

  get '/episodes/:id' do
    quotes = Quote.all.select {|quote| quote.episode_id == params["id"].to_i}
    @quotes = quotes.sort {|x,y| x.rating <=> y.rating}.reverse
    erb :'episodes/show'
  end

end