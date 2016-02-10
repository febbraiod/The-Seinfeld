
class QuotesController < ApplicationController 
  
#every time a quote appears it needs to link to it's own page for voting.

  get '/quotes' do
    @quotes = Quote.all
    erb :'quotes/index'
  end

  get '/quotes/new' do
    erb :'quotes/new'
  end

  post 'quotes/new' do
    #create quote
    #redirect to quote page
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