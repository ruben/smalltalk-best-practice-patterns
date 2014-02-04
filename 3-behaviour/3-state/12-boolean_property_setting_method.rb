# How do you set a boolean property?
#
# Create two methods begining with 'be'
# One has property name, the other the negation
# Add 'toggle' if the client doesn't want to know about the current state.

class ListPane
  def initialize
    @visible = true
  end

  def be_visible
    @visible = true
  end

  def be_invisible
    @visible = false
  end

  def toggle_visible
    @visible = !@visible
  end
end