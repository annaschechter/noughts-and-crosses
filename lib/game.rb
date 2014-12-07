class Game

	attr_reader :player1, :player2, :board

	def initialize 
		@player1 = nil
		@player2 = nil
		@board = Board.new
	end

	def add_player(player)
		if @player1 == nil
			@player1 = player
		elsif @player2 == nil
			@player2 = player
		end
	end

	def ready?
		@player1 != nil && @player2 != nil
	end

	def take_a_turn(player, cell)
		if player == @player1
			@board.add_choice(cell, Choice.new('cross'))
		elsif player == player2
			@board.add_choice(cell, Choice.new('nought'))
		end
	end	

end