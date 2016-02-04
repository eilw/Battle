require 'player'

describe Player do
  subject(:player){described_class.new('Emma')}

  describe '#name' do

    it 'returns the players name' do
      expect(player.name).to eq('Emma')
    end

  end

  describe 'Hit-points' do

    it 'a new player has 60 in HP' do
      expect(player.hp).to eq(60)
    end

    it 'a players HP can be reduced with a specific value' do
      player.reduce_hp(10)
      expect(player.hp).to eq(50)
    end

  end


end
