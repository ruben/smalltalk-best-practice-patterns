# How do you code complex Pluggable Behaviour that is not quite worth its own class?
#
# Add an instance variable to store a Block.
# Add "Block" to the role suggesting variable name.
# Create composed method to evaluate the Block to invoke the Pluggable Behaviour.

class PluggableAdaptor
  attr_accessor :get_block, :set_block

  def initialize get_block, set_block
    self.get_block = get_block
    self.set_block = set_block

    def value
      return get_block.call
    end

    def value=(object)
      set_block.call object
    end
  end
end

class Car
  attr_accessor :speed

  def initialize(speed)
    @speed = speed
  end

  def speed_adaptor
    return PluggableAdaptor.new lambda { self.speed }, lambda { |speed| self.speed = speed }
  end
end

car = Car.new(100)
speed_adaptor = car.speed_adaptor
puts "speed_adaptor.value: #{speed_adaptor.value}"
speed_adaptor.value = 50
puts "speed_adaptor.value = 50: #{speed_adaptor.value}"
