class EpisodesController < ApplicationController

#every time a quote appears it needs to link to it's own page for voting.

  get '/episodes'
    @quotes = Quote.all
    #need a way to sort them by episode
    erb :'episodes/index'
  end

  get '/episode/:id'
    #not sure how to do this atm, but get an instance variable with the quotes from that episode
    erb :'episodes/show'
  end

end