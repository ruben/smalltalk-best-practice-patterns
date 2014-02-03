# How do you initialize instance variables to their default value?
#
# Implement a method "initialize" that sets all the values explicitly.
# Override the class message new to invoke it on all instances.

class Timer
  # Default value method
  def default_millisecond_period
    1000
  end

  def initialize
    @period = default_millisecond_period
    @count = 0
  end
end
