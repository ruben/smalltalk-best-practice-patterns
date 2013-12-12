# How do you add to a superclass’ implementation of a method?
#
# Override the method and send a message to “super” in the overriding method.
#
class BorderedFigure
  def display
    super.display
    display_border
  end
end