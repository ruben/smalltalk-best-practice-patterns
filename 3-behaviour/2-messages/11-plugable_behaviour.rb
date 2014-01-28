# How do you code simple instance specific behavior?
#
# Add a variable that contains a selector to be performed.
# Append “Message” to the Role Suggesting Instance Variable
# Name. Create a Composed Method that simply performs the selector

class DollarListPane
  def print_element object
    object.as_dollar_format_string
  end
end

class DescriptionListPane
  def print_element object
    object.description
  end
end

class ListPane
  attr_accessor :print_message

  def initialize print_message
    self.print_message = print_message
  end

  def print_element object
    object.send print_message
  end
end

class Dollar
  def as_dollar_format_string
    puts "Dollar#as_dollar_format_string"
  end
end

dollar_list_pane = ListPane.new(:as_dollar_format_string)
dollar = Dollar.new
dollar_list_pane.print_element(dollar)
