class Board

	attr_reader :grid

	def initialize
		@grid = {}
		(1..9).each{|num| @grid[num] = Cell.new}
	end

	def find_cell(num)
		return @grid[num]
	end

	def add_choice(num, choice)
		@grid[num].fill_with(choice)
	end

end