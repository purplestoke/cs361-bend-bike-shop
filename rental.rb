class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price
    bike.calculate_price
  end

  def weight
    bike.total_weight
  end

end
