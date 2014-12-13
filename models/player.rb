class Player

	def initialize
		@winner = false
	end

	def winner?
		return @winner
	end

	def win!
		@winner = true
	end

end