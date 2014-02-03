# How do you code a constant?
#
# Create a method that returns the constant

class ListPane
  def single_select
    self.selection_policy = 15
  end
end

# If other methods need to know that 15 is the magic constant for single selection
# we create a method for it

class ListPanel
  def single_select_policy
    15
  end

  def single_select
    self.selection_policy = single_select_policy
  end
end