# How do you represent instance creation?
#
# Provide methods that create well-formed instances. Pass all required parameters to them.
#
class Point
  def initialize(x, y)
  end

  def initialize(r, theta)
    Point.new r * Math.cos(theta), r * Math.sin(theta)
  end
end