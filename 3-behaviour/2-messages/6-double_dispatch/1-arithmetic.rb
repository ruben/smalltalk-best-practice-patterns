# How can you code a computation that has many cases, the cross product of two families of classes?
#
# Send a message to the argument. Append the class name of the receiver to the selector. Pass the receiver as an argument.

class Integer
  def + number
    number.add_integer self
  end
end

class Float
  def + number
    number.add_float self
  end
end

class Integer
  def add_integer integer
  end

  def add_float float
    to_float.add_float float
  end
end

class Float
  def add_integer integer
    to_int.add_integer integer
  end

  def add_float float
  end
end
