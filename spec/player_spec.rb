require 'player'


describe Player do
  subject(:john){ Player.new{'John'}}
  it 'returns the name of the player' do
    expect(john.name).to eq 'John'
  end
end
