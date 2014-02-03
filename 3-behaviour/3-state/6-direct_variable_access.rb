# How do you get and set an instance variable value?
#
# Access and set the variable directly

class Timer
  def set_coordinates(x, y)
    @x, @y = x, y
  end
end