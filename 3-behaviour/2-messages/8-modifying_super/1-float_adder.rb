# How do you change part of the behavior of a superclass’ method without modifying it?
#
# Override the method and invoke “super,” then execute the code to modify the results.
#
class IntegerAdder
  def initialize
    @sum = 0
    @count = 0
  end
end

class FloatAdder < IntegerAdder
  def initialize
    super
    @sum = 0.0
  end
end

# If you can is better to refactor initialize in the super class using Composed Method.
class IntegerAdder
  def initialize
    @sum = default_sum
    @count = default_count
  end

  def default_sum
    0
  end

  def default_count
    0
  end
end

class FloatAdder
  def default_sum
    0.0
  end
end