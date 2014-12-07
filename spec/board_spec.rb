require './lib/board'

describe Board do

	let(:board) {Board.new}
	let(:cross) {double :choice, :name => "cross"}


	it 'should contains nine cells' do
		expect(board.length).to eq(9)
	end

	it 'can access every cell' do
		expect(board.find_cell(2).empty?).to be true
	end

	it 'can add choiced to a specific cell' do
		board.add_choice(2, cross)
		expect(board.find_cell(2).empty?).to be false
	end

end