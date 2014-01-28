# How do you implement delegation to an object that needs reference to the delegating object?
#
# Pass the delegating object (i.e. self) as an additional parameter named for
class Dictionary
  attr_accessor :hash_table

  def initialize
    @hash_table = HashTable.new
  end

  def at(key, value)
    hash_table.at(key, value, self)
  end

  def hash_value key
    puts "Dictionary#hash_value: #{key}"
    "hash_value"
  end
end

class HashTable
  def at(key, value, who)
     hash = who.hash_value key
    puts "HashTable#at: #{hash}"
  end
end

dictionary = Dictionary.new()
dictionary.at("key", "value")