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

  post '/computer/player_result' do
    cell = params[:choice]
    player = game.player1
    game.take_a_turn(player, cell.to_i)
  end

  post '/computer/computer_result' do
    game.player2.make_a_choice
    puts game.board.grid
  end

  get '/computer/board' do
    content_type :json
    board = []
    hash = game.board.grid
    hash.each {|key, value| 
      if value.content != nil
        board << value.content.name
      else
        board << nil
      end
    }
    return board.to_json
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
