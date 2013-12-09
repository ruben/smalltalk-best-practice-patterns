class Part
  def *(a_rate)
    return Part.new(amount * a_rate, date)
  end
end

class Station
  def compute_part(a_part)
    return a_part * rate
  end
end