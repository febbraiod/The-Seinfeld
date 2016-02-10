class EpisodesController < ApplicationController 

#every time a quote appears it needs to link to it's own page for voting.

  get '/episodes' do
    @quotes = Quote.all
    #need a way to sort them by episode(episode_id)
    erb :'episodes/index'
  end

  get '/episode/:id' do
    #not sure how to do this atm, but get an instance variable with the quotes from that episode
    erb :'episodes/show'
  end

end