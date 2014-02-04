# How do you provide safe, general access to collection elements.
#
# Implement a method that executes a Block for each element of the collection.
# Name the method by concatenating the name of the collection and do

class Department
  def each_employee &block
    employees.each do |employee|
      yield employee
    end
  end
end

# Getting all employees from a company
class Company
  def all_employees
    result = Array.new
    all_departments.each do |department|
    department.each_employee |employee|
        result << employee
    end
    result
  end
end

# If a department can contain not only employees but other departments (Composite modeling pattern)
# This way employees contains employees and departments.

class Department
  def each_employee &block
    employees.each_employee do |employee|
      employee.each_employee &block
    end
  end
end

class Employee
   def each_employee &block
     yield self
   end
end