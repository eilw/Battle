class Attack

  attr_reader :switches

  PAIN_RANGE = (1..15)

  def initialize
    @switches = 0
    @hp_pain = 0
  end

  def basic(player)
    @switches = 1
    player.reduce_hp(random_pain)
  end

  def random_pain
    rand(PAIN_RANGE)
  end



#calculate randomn hp reduction
#inform game if something to change with turns
end
