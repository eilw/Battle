class Player
  MAX_HEALTH = 100
  DAMAGE = 10

  attr_reader :hp

  def initialize(name)
    @name = name
    @hp = MAX_HEALTH
  end

  def name
    @name
  end

  def reduce_hp
    @hp -= DAMAGE
  end


end