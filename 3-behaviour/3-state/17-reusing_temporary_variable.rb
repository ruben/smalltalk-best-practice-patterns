# How do you use an expression several places in a method when its value may change?
#
# Execute the expression once and set a temporary variable.
# Use the variable instead of the expression in the remainder of the method.

# If you match the value returned from a stream against a list of keywords...
class Klass
  def stream
  end

  # The evaluation of stream.gets causes the stream to change, so this is not likely what you mean...
  def read_from_stream
    if stream.gets == a
    end
    if stream.gets == b
    end
    if stream.gets == c
    end
  end
end

# Instead...
class Klass
  def stream
  end

  def read_from_stream
    token = stream.gets
    if token == a
    end
    if token == b
    end
    if token == c
    end
  end
end
