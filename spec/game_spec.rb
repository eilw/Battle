require 'game'

describe 'Game' do

  subject(:game) {Game.new(player_1, player_2)}

  let(:player_1) {double(:player)}
  let(:player_2) {double(:player)}

  context 'on initialization' do

    it 'allows the game to take two players' do
      expect(game.players.length).to eq 2
    end

  end

  context 'Attacking' do

    it 'responds to reduce_hp' do
      expect(player_2).to receive(:reduce_hp)
      game.attack(player_2)
    end


  end
end
