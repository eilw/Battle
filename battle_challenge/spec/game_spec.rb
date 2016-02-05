require 'game'

describe Game do

  let(:player_1) {double :player, health: 10}
  let(:player_2) {double :player, health: 0 }
  subject(:game) { Game.new(player_1, player_2) }

  context '#attack' do
    it 'attacks a given player' do
      expect(player_2).to receive(:reduce_health)
      game.attack(player_2)
    end
  end

  context '#health' do
    it 'gets health of given player' do
      expect(player_2).to receive(:health)
      game.health(player_2)
    end
  end

  context '#name' do
    it 'gets name of given player' do
      expect(player_2).to receive(:name)
      game.name(player_2)
    end
  end

  context '#attacker' do
    it 'returns the name of who is attacking' do
      expect(game.attacker).to eq player_1
    end

    it 'switches the attacking player after a go' do
      game.switch
      expect(game.attacker).to eq player_2
    end
  end

  context '#opponent' do
    it 'returns the oppenent player' do
      expect(game.opponent).to eq player_2
    end

    it 'switches the opponent after a go' do
      game.switch
      expect(game.opponent).to eq player_1
    end
  end

  context '#game_over?' do
    it 'a game is over when one of the player reaches 0 hp' do
      expect(game).to be_game_over
    end
  end
end
