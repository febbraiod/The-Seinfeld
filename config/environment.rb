ENV['SINATRA_ENV'] ||= "development" #i don't know what this does. 
                                     #Ok i know it 'establishes my SINATRA_ENV variable' but so what?

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV']) #same deal


#I know this sets up my connection for a sqlite db, but I still don't get the mechanics of it.
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)


require 'open-uri'
require_all 'app'
require_all 'lib'