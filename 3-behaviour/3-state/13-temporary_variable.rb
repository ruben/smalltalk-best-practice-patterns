# How do you save the value of an expression for later use within a method?
#
# Create a variable whose scope and extend is a single method
# Declare it just below the method selector.
# Assign it as soon as the expression is valid.

# This method more easily read...
class Rectangle
  def bottom_rigth
    right = left + width
    bottom = top + height
    Point.new(right, bottom)
  end
end

# ...than this one
class Rectangle
  def bottom_rigth
    Point.new(left + width, top + height)
  end
end