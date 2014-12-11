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

	def winner?
		@board.vertical_match? || @board.horisontal_match? || @board.diagonal_match?
	end

	def draw?
		return false if winner?
		i = 1
		while i <= 9 do 
			return false if @board.find_cell(i) == nil
		 	i += 1
		end
		return true
	end
end