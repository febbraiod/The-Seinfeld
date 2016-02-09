require './config/environment'

use Rack::Static, :root => 'public', :urls => ['/images', '/stylesheets']

use Rack::MethodOverride
run ApplicationController