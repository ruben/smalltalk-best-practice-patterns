class Station
  def compute_part(a_part)
    return multiply_part_time_rates(a_part)
  end

  def multiply_part_time_rates(a_part)
    return Part.new(amount: a_part.amount * rate, date: a_part.date)
  end
end