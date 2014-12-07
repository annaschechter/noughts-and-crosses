class Cell

	def initialize
		@content = nil
	end

	def empty?
		@content == nil
	end

	def fill_with(choice)
		@content = choice
	end

end
