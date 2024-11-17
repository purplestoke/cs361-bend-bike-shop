# Bike

class Bike

  attr_reader :id, :color, :price, :weight
  attr_accessor :rented

  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO_ITEMS = 10

  def initialize(id:, color:, price:, weight: STANDARD_WEIGHT, rented: false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo = Cargo.new(MAX_CARGO_ITEMS)
  end

  def rent!
    self.rented = true
  end

  def return!
    self.rented = false
  end

  def add_cargo(item)
    @cargo.add(item)
  end

  def remove_cargo(item)
    @cargo.remove(item)
  end

  def pannier_capacity
    @cargo.capacity
  end

  def pannier_remaining_capacity
    @cargo.remaining_capacity
  end

  # PRIVATE CLASS TO HANDLE CARGO LOGIC
  private
  class Cargo
    attr_reader :contents

    def initialize(max_capacity)
      @contents = []
      @max_capacity = max_capacity
    end

    def full?
      @contents.size >= @max_capacity
    end

    def add(item)
      raise "Capacity Full" if full?

      @contents << item
    end

    def remove(item)
      @contents.delete(item)
    end

    def capacity
      @max_capacity
    end

    def remaining_capacity
      @max_capacity = @contents.size
    end

  end
end
