require 'player'

describe Player do
  subject(:player){ described_class.new(:Joe)}


  context 'When initiating a player' do
    it 'Player returns their name' do
      expect(player.name).to eq(:Joe)
    end

    it 'Player is created with 100 in default HP' do
      expect(player.hp).to eq(Player::MAX_HEALTH)
    end
  end

  describe '#attack' do
    it 'the hp can be reduced' do
      expect{player.reduce_hp}.to change{player.hp}.by(-Player::DAMAGE)
    end

    xit 'an attack reduces the hp of the other player' do
      expect{player.attack}.to change{player.hp}.by(-Player::DAMAGE)
    end


  end

end
