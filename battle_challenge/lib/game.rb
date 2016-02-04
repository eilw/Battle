class Game

attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
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


  #def name


  #end

end
