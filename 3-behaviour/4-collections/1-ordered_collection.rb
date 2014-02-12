# How do you code Collections whose size can't be determined when they are created?
#
# Use an OrderedCollection (Array in Ruby) as your default dynamically sized collection

# A Document stores an ordered collection of paragraphs
class Document
  def paragraphs
    @paragraphs = Array.new if @paragraphs.nil?
    @paragraphs
  end

  def add_paragraph paragraph
    @paragraphs.push paragraph
  end

  # Typesetting a Document is implemented by typesetting each Paragraph in turn.
  def typeset_on printer
    @paragraphs.each { |paragraph| paragraph.typeset_on printer}
  end
end