# How do improve the performance of a method?
#
# Set a temporary variable to the value of the expression as soon as it is valid.
# Use the variable instead of the expression in the remainder of the method.

# If calculating the bounds is expensive, you can transform...
class Klass
  def bounds
    # Expensive calculation
  end

  def children_calculation
     children.each do |child|
       child.calculation * self.bounds
     end
  end
end

# ...in
class Klass
  def bounds
    # Expensive calculation
  end

  def children_calculation
    bounds = self.bounds
    children.each do |child|
      child.calculation * bounds
    end
  end
end