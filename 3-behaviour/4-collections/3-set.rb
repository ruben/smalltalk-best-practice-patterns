# How do you code a collection whose elements are unique?
#
# Use a Set.

# Suppose you have a collection of Accounts and want to send statements to all of the Owners.
# The naive code doesn't work right
# We cant get multiple copies of an owner.
class Statement
  def owners
    result = Array.new
    accounts.each do |account|
      result << account.owner
    end
    result
  end
end

# We can solve this checking if the owner was in the result before adding it
class Statement
  def owners
    result = Array.new
    accounts.each do |account|
      owner = account.owner
      result << owner unless result.include? owner
    end
    result
  end
end

# Set solves the problem by ignoring add if the object is already included.
class Statement
  def owners
    result = Set.new
    accounts.each do |account|
      result << account.owner
    end
    result
  end
end