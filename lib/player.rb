class Player

  DEFAULT_HP = 60
  HP_REDUCUTION = 10

  attr_reader :hp

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end




  def name
    @name.dup
  end

  def reduce_hp(damage)
    @hp -= damage
  end

end
