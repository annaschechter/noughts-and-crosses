require './models/cell'

describe Cell do

	let(:cell) {Cell.new}
	let(:cross) {double :choice}

	it 'is initialized empty' do
		expect(cell.empty?).to be true
	end

	it 'can be filled' do
		cell.fill_with(cross)
		expect(cell.empty?).to be false
	end

end