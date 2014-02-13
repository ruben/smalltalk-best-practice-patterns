# How do you ensure that new objects work correctly with hashed Collections?
#
# If you override == and use the objects with a hashed Collection
# override hash so that two objects that are equal return the same hash value.

# To define the hash we xor the two attributes hash values.
class Book
  def hash
    title.hash ^ author.hash
  end
end