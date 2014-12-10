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
			return true if(_cell_non_empty(num) && _column_match(num))
			num += 1
		end
		return false
	end

	def _column_match(num)
		return false if _next_vertical(num) == nil || _next_next_vertical(num) == nil
	  find_cell(num).name == _next_vertical(num).name && find_cell(num).name == _next_next_vertical(num).name
	end

	def _cell_non_empty(num)
		find_cell(num) != nil
	end

	def _next_vertical(num)
		find_cell(num + 3)
	end

	def _next_next_vertical(num)
		find_cell(num + 6)
	end

	def horisontal_match?
		num = 1
		while num <= 7 do
			return true if(_cell_non_empty(num) && _row_match(num))
			num += 3
		end
		return false
	end

	def _row_match(num)
		return false if _next_horisontal(num) == nil || _next_next_horisontal(num) == nil
	  find_cell(num).name == _next_horisontal(num).name && find_cell(num).name == _next_next_horisontal(num).name
	end

	def _next_horisontal(num)
		find_cell(num + 1)
	end

	def _next_next_horisontal(num)
		find_cell(num + 2)
	end

	def diagonal_match?
		return true if(_diagonal_1_to_9 || _diagonal_3_to_7)
		return false
	end 

	def _diagonal_1_to_9
		_cell_non_empty(1) && _diagonal(1)
	end

	def _diagonal_3_to_7
		_cell_non_empty(3) && _diagonal(3)
	end

	def _diagonal(num)
		return false if _center == nil || _next_next_diagonal(num) == nil
		find_cell(num).name == _center.name && find_cell(num).name == _next_next_diagonal(num).name
	end

	def _center
		find_cell(5)
	end

	def _next_next_diagonal(num)
		find_cell(5 + (5 - num))
	end

end