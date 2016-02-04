class Game

  attr_reader :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def attack(player)
    player.reduce_hp
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

end
