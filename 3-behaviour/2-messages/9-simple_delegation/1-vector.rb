# How do you invoke a disinterested delegate?
#
# Delegate messages unchanged
#
class Vector
  attr_writer :elements

  def initialize size
    self.elements = Array.new size
  end

  def each &block
    elements.each &block
  end
end