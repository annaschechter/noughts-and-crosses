require './models/computer'

describe Computer do
  let(:board) {Board.new}
  let(:computer) {Computer.new(board)}

  it 'belongs to only one board' do
    expect(computer.board.class).to eq Board
  end

  it 'is initialized as not a winner' do
    expect(computer.winner?).to be false
  end

  it 'can win the game' do
    computer.win!
    expect(computer.winner?).to be true
  end

  it 'can make choices' do
    computer.make_a_choice
    expect(board.grid).to include "nought"
  end

  
end