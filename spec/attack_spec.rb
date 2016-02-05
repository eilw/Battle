require 'attack'


describe Attack do
  subject(:attack){ described_class.new }
  let(:player_1){double(:player1, reduce_hp: true)}

  describe '#basic' do
    it 'one player can attack another' do
      expect(player_1).to receive(:reduce_hp)
      attack.attack(player_1)
    end
  end

  describe '#switches' do
    it 'gives a number of turns based on the attack' do
      attack.attack(player_1)
      expect(attack.switches).to eq(1)
    end
  end

  describe '#type_of_attack' do
    it 'can read the type of attack and call method' do
      expect(player_1).to receive(:reduce_hp)
      attack.type_of_attack('Attack',player_1)

    end
  end
end
