require 'sinatra/base'
require 'json'
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
    computer = Computer.new(game.board)
    game.add_player(computer)
    erb :play_computer
  end

  get '/play_players' do
    "Waiting for oponents to join the game!!!"
  end

  post '/computer/result' do
    cell = params[:choice]
    player = game.player1
    game.take_a_turn(player, cell.to_i)
    puts game.board.grid
  end

  get '/computer/result/:cell_number' do
    # puts game.board.grid
    content_type :json
    cell_number = params[:cell_number].to_i
    # puts cell
    choice = game.board.grid[cell_number].content.name
    puts choice
    return choice.to_json
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
