# What is the external interface for creating a new object when a Constructor Method is too wordy?
#
# Represent object creation as a message to one of the arguments to the Constructor Method.
# Add no more than three of these Shortcut Constructor Methods per system you develop.
#
class Point
  def initialize(x, y)
  end
end

class Number
  #original book example used @
  def at(y)
    return Point.new(self, y)
  end
end

point = 1.at 2
puts point