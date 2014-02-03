# How do you access an instance variable?
#
# Provide a method that returns the value of the variable.
# Give the method the same name as the variable.

class Book
  private
  def author
   @author
  end

  def title
    @title
  end
end

# Using Ruby attr_reader
class Book
  private
  attr_reader :title, :author
end

# Only make it public if strictly needed
class Book
  attr_reader :title, :author
end