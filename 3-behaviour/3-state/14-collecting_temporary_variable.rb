# How do you gradually collect values to be used later in a method?
#
# When you need to collect or merge objects over a complex enumeration,
# use a temporary variable to hold the collection or merged value.

# Often, the right set of enumeration protocol eliminates the need of temporary variables.
# Code like
class Klass
  def size
    sum = 0
    children.each do |child|
      sum += child.size
    end
    sum
  end
end

# Can be rewritten as
class Klass
  def size
    children.inject { |sum, child| sum += child.size }
  end
end

# Merges two collections together so that you have one element from a and one element from b, etc.
class Klass
  def merge_collections left, right
    result = Array.new
    left.zip(right).each do |l, r|
      result << l
      result << r
    end
   result
  end
end