require_relative './board.rb'
class Computer

  attr_reader :board

  def initialize(board)
    @board = board
    @winner = false
  end

  def winner?
    return @winner
  end

  def win!  
    @winner = true
  end

  def make_a_choice
    i = false
    until i == true do 
      num = rand(1...10).floor
      if @board.find_cell(num) != nil
        i = false
      else 
        @board.add_choice(num, Choice.new("nought"))
        i = true
      end
    end
end

end