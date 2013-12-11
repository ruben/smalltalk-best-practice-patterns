# How do you represent pairs of actions that have to be taken together?
#
# Code a method that takes a Block as an argument. Name the method by appending “During: aBlock”
# to the name of the first method that needs to be invoked. In the body of the Execute
# Around Method, invoke the first method, evaluate the block, then invoke the second method.

class File
  def open_during(&block)
    open
    yield block
    close
  end
end