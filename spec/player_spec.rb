require 'player'

describe 'Player' do

  context 'When initiating a player' do
    it 'Player returns their name' do
      player_1 = Player.new(:Joe)
      expect(player_1.name).to eq(:Joe)
    end
  end

end
