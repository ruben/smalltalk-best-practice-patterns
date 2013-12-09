# How do you represent simple conversion of an object to another object with the same protocol but different format?
#
# Provide a method in the object to be converted that converts to the new object. Name the method by prepending “as” to the class of the obj
#
class Collection
  def as_set
  end
end

class Number
  def as_float
  end
end