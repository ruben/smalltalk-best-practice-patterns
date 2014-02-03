# How do you provide access to an instance variable that holds a collection?
#
# Provide methods that are implemented with Delegation to the collection.
# To name the methods add the name of the collection to the collection messages.

class Department
  def total_salary
    if @total_salary.nil?
      @total_salary = compute_total_salary
    end
    @total_salary
  end

  def compute_total_salary
     @employees.inject { |sum, n| sum + n }
  end

  def clear_total_salary
    @total_salary = nil
  end

  def add_employee employee
    clear_total_salary
    @employees << employee
  end

  def remove_employee employee
    clear_total_salary
    @employees.delete(employee)
  end

  def employs employee
    @employees.include? employee
  end
end