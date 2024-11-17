!# /usr/bin/env ruby

require_relative 'bike'

# INITIALIZE BIKE OBJECT
bike = Bike.new(id: 1, color: :pink, price: 99.99)

# ADD CARGO ITEMS
bike.add_cargo(:apples)
bike.add_cargo(:water)
bike.add_cargo(:repair_kit)

# SHOW REMAINING PANNIER CAPACITY
puts "Space for #{bike.pannier_remaining_capacity} items left."

bike.rent!
