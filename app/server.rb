require 'sinatra'
require 'rack-flash'

use Rack::Flash, :sweep => true

enable :sessions
set :session_secret, 'super secret'

get '/' do 
  "Hello world"
end