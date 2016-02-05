class Game

attr_reader :player_1, :player_2, :turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = true
  end

  def attack(player)
    player.reduce_health
  end

  def health(player)
    player.health
  end

  def name(player)
    player.name
  end

  def switch
    @turn ^= true
  end

  def attacker
    turn ? @player_1 : @player_2
  end

  def opponent
    turn ? @player_2 : @player_1
  end

  def game_over?
    @player_1.health <= 0 || @player_2.health <= 0
  end



end
