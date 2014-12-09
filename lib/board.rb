class Board

	attr_reader :grid

	def initialize
		@grid = {}
		(1..9).each{|num| @grid[num] = Cell.new}
	end

	def find_cell(num)
		@grid[num].content
	end

	def add_choice(num, choice)
		@grid[num].fill_with(choice)
	end

	def vertical_match?
		num = 1
		while num <= 3 do
			return true if _column_match(num) && _cell_non_empty(num)
			num += 1
		end
		return false
	end

	def _column_match(num)
	  find_cell(num) == _next_vertical(num) && find_cell(num) == _next_next_vertical(num)
	end

	def _cell_non_empty(num)
		self.find_cell(num) != nil
	end

	def _next_vertical(num)
		self.find_cell(num + 3)
	end

	def _next_next_vertical(num)
		self.find_cell(num + 6)
	end

	def horisontal_match?
		num = 1
		while num <= 7 do
			return true if _row_match(num) && _cell_non_empty(num)
			num += 3
		end
		return false
	end

	def _row_match(num)
	  find_cell(num) == _next_horisontal(num) && find_cell(num) == _next_next_horisontal(num)
	end

	def _next_horisontal(num)
		find_cell(num + 1)
	end

	def _next_next_horisontal(num)
		find_cell(num + 2)
	end

	def diagonal_match?
		_diagonal_1_to_9 || _diagonal_3_to_7
	end 

	def _diagonal_1_to_9
		return true if _cell_non_empty(1) && _diagonal(1)
	end

	def _diagonal_3_to_7
		return true if _cell_non_empty(3) && _diagonal(3)
	end

	def _diagonal(num)
		find_cell(num) == _center && find_cell(num) == _next_next_diagonal(num)
	end

	def _center
		find_cell(5)
	end

	def _next_next_diagonal(num)
		find_cell(5 + (5 - num))
	end



end