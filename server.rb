require 'sinatra/base'
# require 'json'
require './runner'

class Noughts_and_Crosses < Sinatra::Base

  set :public_folder, Proc.new{ File.join(root, 'public')}
  enable :sessions
  game = Game.new

  get '/' do
    session.clear
    erb :index
  end

  get '/play_computer' do
    session[:user] = Player.new
    game.add_player(session[:user])
    computer = Player.new
    game.add_player(computer)
    @board = game.board
    erb :play_computer
  end

  get '/play_players' do
    "Waiting for oponents to join the game!!!"
  end

  post '/result' do
    cell = params[:choice]
    player = game.player1
    game.take_a_turn(player, cell.to_i)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
