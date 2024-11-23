# Bike
require_relative 'luggage'

class Bike

  STANDARD_WEIGHT = 200 # LBS
  WEIGHT_MULTI = 2 # $2 PER LBS

  attr_reader :id, :color, :base_price, :weight, :luggage

  def initialize(id, color, base_price, extra_items)
    @id = id
    @color = color
    @base_price = base_price
    @weight = STANDARD_WEIGHT
    @luggage = Luggage.new(Luggage::DEFAULT_MAX_CAPACITY, extra_items, self)
  end

  # CALCULATE PRICE
  def calculate_price
    @base_price + WEIGHT_MULTI * total_weight
  end

  # CALCULATE TOTAL WEIGHT
  def total_weight
    weight + luggage.weight
  end

end
