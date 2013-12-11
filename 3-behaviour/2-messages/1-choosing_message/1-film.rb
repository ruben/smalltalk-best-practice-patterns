# How do you execute one of several alternatives?
#
# Send a message to one of several different kinds of objects, each of which executes one alternative.
#
# Conditional logic
responsible = entry.kind_of?(Film) ? entry.producer : entry.author

# Choosing message
responsible = entry.responsible

class Film
  def responsible
    producer
  end
end

class Entry
  def responsible
    author
  end
end


