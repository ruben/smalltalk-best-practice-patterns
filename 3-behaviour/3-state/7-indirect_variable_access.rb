# How do you get and set and instance variable's value?
#
# Access and set its value only through a Getting Method and Setting Method

class Point
  def + (point)
    Point.new(self.x + point.x, self.y + point.y)
    # Point.new(@x + point.x, @y + point.y) Direct variable access.
  end
end
