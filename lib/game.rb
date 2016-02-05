class Game
  attr_reader :player_1, :player_2, :player_in_control, :player_waiting

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player_in_control = player_1
    @player_waiting = player_2
    @switches = 0
  end

  # def switches(nr)
  #   nr.times{switch_players}
  # end

  def switch
    switch_players if @switches == 0
    @switches -= 1 if @switches > 0
  end

  def pause_switching(nr_of_switches)
    @switches += nr_of_switches
    switch
  end

  def game_over?
    loosing_player
  end

  private

  def switch_players
    if player_in_control == player_1
      @player_in_control, @player_waiting = player_2, player_1
    else
      @player_in_control, @player_waiting = player_1, player_2
    end
  end

  def loosing_player
    player_1.hp <= 0 || player_2.hp <= 0
  end


end
