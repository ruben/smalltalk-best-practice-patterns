# How do you simplify a complex expression within a method?
#
# Take a subexpression out of the complex expression.
# Assign its value to a temporary variable before the complex expression.
# Use the variable instead in the complex expression.

class LinearHashTable
  def find_index element, client
    last_index = self.size - 1 # In Smalltalk self.size
    # ... Rest of the method
  end
end