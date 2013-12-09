# How do you divide a program into methods?
#
# Divide your program into methods that perform one identifiable task. Keep all of the operations in a method at the same level of abstraction.
# This will naturally result in programs with many small methods, each a few lines long.
#
class Controller
  def control_initialize
  end

  def control_loop
  end

  def control_terminate
  end

  def control_activity
    control_initialize
    control_loop
    control_terminate
  end
end