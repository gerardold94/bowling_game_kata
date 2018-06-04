require 'spec_helper'
require 'bowling'

describe Bowling do
  let(:game) { Bowling.new }

  def roll_many(count, pins)
    count.times { game.roll(pins) }
  end

  def roll_spare
    game.roll(4)
    game.roll(6)
  end

  def roll_strike
    game.roll(10)
  end
end
