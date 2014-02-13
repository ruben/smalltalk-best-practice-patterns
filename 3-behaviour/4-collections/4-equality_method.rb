# How do you code equality for new objects?
#
# If you will be putting objects in a Set, using them as Dictionary keys,
# or otherwise using them with other objects that define equallity,
# define a method called ==.
# Protect the implementation of == so only objects of compatible classes
# will be fully tested for equality.

# The default implementation of equality is identity
# Two objects are equal if they are the same object
class Object
  def ==(object)
    self == object
  end
end

# The most important reason for implementing equality
# is because you are going to put objects in a Collection
# and want to be able to test for inclusion, remove elements
# or eliminate duplicate in tests without having to have the
# same instance.

# Lets say we are working in a library program.
# Two books are equal if the author and title are equal
class Book
  def ==(book)
    self.title == book.title && self.author == book.author
  end
end

# A Library has an OrderedCollection of Books
class Library
  def has_author_and_title(author, title)
    book = Book.new(author, title)
    books.include? book
  end
end

# If the Library can contain different classes of objects
class Book
  def ==(book)
    return false unless book.class == self.class
    self.title == book.title && self.author == book.author
  end
end

