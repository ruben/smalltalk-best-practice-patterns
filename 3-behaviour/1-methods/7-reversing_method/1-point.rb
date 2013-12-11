# How do you code a smooth flow of messsages?
#
# Code a method on the parameter. Derive its name from the original message. Take the original receiver as a parameter to the new method.
# Implement the method by sending the original message to the original receiver.
#
# Original
class Point
  def print_on(stream)
    x.print_on stream
    stream.next_put_all '@'
    y.print_on stream
  end
end

# Refactored using reversing method
class Stream
  def print(object)
    object.print_on self
  end
end

class Point
  def print_on(stream)
    stream.print x
    stream.next_put_all "@"
    stream.print y
  end
end