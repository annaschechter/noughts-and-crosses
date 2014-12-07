require './lib/game'

describe Game do 

	let(:game) {Game.new}
	let(:player1) {double :player}
	let(:player2) {double :player}

	def get_game_ready(game)
		game.add_player(player1)
		game.add_player(player2)
	end

	it 'is initialized without players' do
		expect(game.player1).to eq(nil)
		expect(game.player2).to eq(nil)
	end

	it 'can add a first player' do
		game.add_player(player1)
		expect(game.player1).to_not eq(nil) 
	end

	it 'can add a second player' do
		get_game_ready(game)
		expect(game.player2).to_not eq(nil) 
	end

	it 'knows when it is ready to start' do
		expect(game.ready?).to_not be true
		get_game_ready(game)
		expect(game.ready).to be true
	end

	it 'should have a board' do
		expect(game.board.class).to eq(Board)
	end

	it 'allows players to have a turn for player1' do
		get_game_ready(game)
		game.take_a_turn(player1, 1)
		expect(game.board.grid[1].name).to eq('cross')
	end

	it 'allows players to have a turn for player2' do
    get_game_ready(game)
		game.take_a_turn(player2, 1)
		expect(game.board.grid[1].name).to eq('nought')
	end

end