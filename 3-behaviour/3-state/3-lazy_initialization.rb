# How do you initialize instance variables to its default value?
#
# Write a getting method for the variable.
# Initialize if necessary with a default value method

class Timer
  # Default value method
  def default_count
    0
  end

  def default_period
    1000
  end

  def count
    @count = default_count if @count.nil?
    @count
  end

  def period
    @period.tap do = default_period if @period.nil?
    @period
  end
end