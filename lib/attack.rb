class Attack

  attr_reader :switches

  PAIN_RANGE = (1..15)

  def initialize
    @switches = 0
    @hp_pain = 0
  end

  def type_of_attack(attack_type, player)
    send(attack_type.downcase.to_sym, player)
  end

  def attack(player)
    @switches = 0
    player.reduce_hp(random_pain)
  end


  def poison(player)
    attack(player)
  end

  def steal(player)
    attack(player)
  end

  def paralyse(player)
    @switches = 2
  end

  def sleep(player)
    attack(player)
  end

  def random_pain
    Kernel.rand(PAIN_RANGE)
  end

end
