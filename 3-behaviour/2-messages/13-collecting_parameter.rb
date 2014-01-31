# How do you return a collection that is the collaborative result of several methods?
#
# Add a parameter that collects their results to of all the submethods.

# Original
class People
  def married_man_and_unmarried_woman
    result = Array.new
    self.people.each do |person|
      result << person if person.man? and person.married?
    end
    self.people.each do |person|
      result << person if person.woman? and person.unmarried?
    end
    return result
  end
end

# Extract Composed Method
class People
  def married_man
    result = Array.new
    self.people.each do |person|
      result << person if person.man? and person.married?
    end
    return result
  end

  def unmarried_woman
    result = Array.new
    self.people.each do |person|
      result << person if person.woman? and person.unmarried?
    end
    return result
  end
end

class People
  def married_man_and_unmarried_woman
    result = Array.new
    add_married_man_to result
    add_unmarried_woman_to result
    return result
  end

  def add_married_man_to collection
    self.people.each do |person|
      collection << person if person.man? and person.married?
    end
  end

  def add_unmarried_woman_to collection
    self.people.each do |person|
      collection << person if person.woman? and person.unmarried?
    end
  end
end