require 'attack'


describe Attack do
  subject(:attack){ described_class.new }
  let(:player_1){double(:player1, reduce_hp: true)}

  describe '#basic' do
    it 'one player can attack another' do
      expect(player_1).to receive(:reduce_hp)
      attack.basic(player_1)
    end
  end

  describe '#switches' do
    it 'gives a number of turns based on the attack' do
      attack.basic(player_1)
      expect(attack.switches).to eq(1)
    end
  end
end
