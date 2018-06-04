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

  it 'scores a gutter game' do
    roll_many 20, 0
    expect(game.score).to eq 0
  end

  it 'scores 20 when all pins are 1' do
    roll_many 20, 1
    expect(game.score).to eq 20
  end

  it 'scores one spare' do
    roll_spare
    game.roll 3
    roll_many 17, 0
    expect(game.score).to eq 16
  end

  it 'scores one strike' do
    roll_strike
    game.roll 3
    game.roll 4
    roll_many 16, 0
    expect(game.score).to be 24
  end

  it 'scores perfect game' do
    roll_many 12, 10
    expect(game.score).to be 300
  end
end
