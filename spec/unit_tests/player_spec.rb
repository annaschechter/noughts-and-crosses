require './lib/player'

describe Player do

	let(:player) {Player.new}

	it 'is initialized as not a winner' do
		expect(player.winner?).to be false
	end

	it 'can win' do
		player.win
		expect(player.winner?).to be true
	end
	
end