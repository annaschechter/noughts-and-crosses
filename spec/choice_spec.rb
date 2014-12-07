require './lib/choice'

describe Choice do

	it 'can be a cross' do
		cross = Choice.new("cross")
		expect(cross.name).to eq("cross")
	end

	it 'can be a nought' do
		nought = Choice.new("nought")
		expect(nought.name).to eq("nought")
	end
	
end