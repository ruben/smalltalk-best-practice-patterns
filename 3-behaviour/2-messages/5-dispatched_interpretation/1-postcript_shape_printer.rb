# How can two objects cooperate when one wishes to conceal its representation?
#
# Have the client send a message to the encoded object. Pass a
# parameter to which the encoded object will send decoded messages.

# Shape is represented by a collection of line, curve, stroke and fill commands
# Each command has its arguments
class Shape
  def command_at(i)
  end

  def arguments_at(i)
  end
end

# Each client class must deal with the case
class PostScriptShapePrinter
  def display shape
    1.upto shape.size do |i|
      command = shape.command_at i
      arguments = shape.arguments_at i
      case command
        when :line
          print_point arguments[1]
          space
          print_point arguments[2]
          space
          print_line
        when :curve
        when :stroke
        when :fill
      end
    end
  end
end

# Dispatched interpretation
class Shape
  def send_command_at i, object
  end
end

class PostScriptShapePrinter
  def line from, to
    print_point from
    space
    print_point to
    space
    print_line
  end

  def display shape
    1.upto shape.size do |i|
      shape.send_command_at i, self
    end
  end
end

# This can be simplified if we give the shape the responsibility to iterate
# over his own commands
class Shape
  def send_commands_to object
    1.upto size do |i|
      send_command_at i
    end
  end
end

class PostScriptShapePrinter
  def display shape
     shape.send_commands_to self
  end
end

