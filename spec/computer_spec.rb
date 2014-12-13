require './models/computer'

describe Computer do
  let(:board) {Board.new}
  let(:computer) {Computer.new(board)}

  it 'belongs to only one board' do
    expect(computer.board.class).to eq Board
  end

  
end