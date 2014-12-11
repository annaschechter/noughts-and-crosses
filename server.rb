require 'sinatra/base'
require 'json'

class Noughts_and_Crosses < Sinatra::Base

  # set :views, Proc.new { File.join(root, "views") }
  set :public_folder, Proc.new{ File.join(root, 'public')}
  enable :sessions

  get '/' do
    erb :index
  end

  get '/play_computer' do
    erb :play_computer
  end

  get '/play_players' do
    "Waiting for oponents to join the game!!!"
  end

  post '/result' do
    puts params[:choice]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
