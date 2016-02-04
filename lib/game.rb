class Game

  attr_reader :players, :go, :opponent

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @go = player_1
    @opponent = player_2
  end

  def attack(player)
    player.reduce_hp
    switch_turns
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  def switch_turns
    if @go == player_1
      @go, @opponent = player_2, player_1
    else
      @go, @opponent = player_1, player_2
    end
  end


end
