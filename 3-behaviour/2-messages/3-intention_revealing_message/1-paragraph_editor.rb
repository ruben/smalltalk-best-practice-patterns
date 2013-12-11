# How do you communicate your intent when the implementation is simple?
#
# Send a message to “self.” Name the message so it communicates what is to be done rather than how it is to be done.
# Code a simple method for the message.

# We highlight a rectangle (WHAT) by reversing it (HOW)
class ParagraphEditor
  def highlight rectangle
     reverse rectangle
  end
end