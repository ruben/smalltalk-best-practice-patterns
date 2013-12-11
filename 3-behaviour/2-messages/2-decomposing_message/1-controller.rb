# How do you invoke parts of a computation?
#
# Send several messages to “self.”

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