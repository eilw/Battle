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

  # describe '#attack' do
  #   it 'an attack reduces the hp of the other player' do
  #     player_2 = Player.new(:name)
  #     expect{player.attack(player_2)}.to change{player_2.hp}.by(-Player::DAMAGE)
  #   end

end
