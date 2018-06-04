class Bowling
  attr_reader :rolls

  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score(roll_index = 0, frame = 1)
    return 0 if frame > 10
  end
end
