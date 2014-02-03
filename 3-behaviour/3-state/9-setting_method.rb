# How do you change the value of an instance variable?
#
# Provide a method with the same name as the instance variable.
# Have it take a single parameter, the value to be set.

class Book
  def title= string
    @title = string
  end

  def author= string
    @author = string
  end
end

# Using Ruby's attr_writer
class Book
  attr_writer :title, :author
end