require './config/environment'



use Rack::MethodOverride


use Rack::Static, :root => 'public', :urls => ['/images', '/stylesheets']

use EpisodesController
use QuotesController
use UsersController
run ApplicationController