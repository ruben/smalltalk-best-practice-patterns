# How do you implement delegation to an object that needs reference to the delegating object?
#
# Pass the delegating object (i.e. self) as an additional parameter named for
class Dictionary
  attr_accessor :hash_table

  def at(key, value)
    hash_table.at(key, value, self)
  end
end

class HashTable
  def at(key, value, who)
     hash = who.hash_value key
  end
end