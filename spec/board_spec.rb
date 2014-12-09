require './lib/board'

describe Board do

	let(:board) {Board.new}
	let(:cross) {double :choice, :name => "cross"}


	it 'should contains nine cells' do
		expect(board.grid.length).to eq(9)
	end

	it 'can access every cell' do
		expect(board.find_cell(2)).to eq(nil)
	end

	it 'can add choiced to a specific cell' do
		board.add_choice(2, cross)
		expect(board.find_cell(2)).to eq(cross)
	end

	it 'knows if there is no vertical match' do
		expect(board.vertical_match?).to be false
	end

	it 'knows if there is a vertical match' do
		board.add_choice(1, cross)
		board.add_choice(4, cross)
		board.add_choice(7, cross)
		expect(board.vertical_match?).to be true
	end

	it 'knows if there is no horisontal match' do
		expect(board.horisontal_match?).to be false
	end

	it 'knows if there is a hoisontal match' do
		board.add_choice(1, cross)
		board.add_choice(2, cross)
		board.add_choice(3, cross)
		expect(board.horisontal_match?).to be true
	end

	it 'knows if there is no diagonal match' do
		expect(board.diagonal_match?).to be nil
	end

	it 'knows if there is a diagonal match' do
		board.add_choice(1, cross)
		board.add_choice(5, cross)
		board.add_choice(9, cross)
		expect(board.diagonal_match?).to be true
	end

end