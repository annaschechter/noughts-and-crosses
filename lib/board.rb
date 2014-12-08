class Board

	attr_reader :grid

	def initialize
		@grid = {}
		(1..9).each{|num| @grid[num] = Cell.new}
	end

	def find_cell(num)
		return @grid[num].content
	end

	def add_choice(num, choice)
		@grid[num].fill_with(choice)
	end

	def vertical_match?
		num = 1
		while num <= 3 do
			return self.find_cell(num) if(self.find_cell(num) == self.find_cell(num + 3) && self.find_cell(num) == self.find_cell(num + 6))
			num += 1
		end
	end

	def horisontal_match?
		num = 1
		while num <= 7 do
			return self.find_cell(num) if(self.find_cell(num) == self.find_cell(num + 1) && self.find_cell(num) == self.find_cell(num + 2))
			num += 3
		end
	end

	def diagonal_match?
		return self.find_cell(1) if(self.find_cell(1) == self.find_cell(5) && self.find_cell(num) == self.find_cell(9))
		return self.find_cell(3) if(self.find_cell(3) == self.find_cell(5) && self.find_cell(num) == self.find_cell(7))
	end 

end