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

end