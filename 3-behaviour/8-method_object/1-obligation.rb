# How do you code a method where many lines of code share many arguments and temporary variables?
#
# Create a class named after the method. Give it an instance variable for the receiver of the original method, each argument, and
# each  temporary variable. Give it a Constructor Method that takes the original receiver and the method arguments.
# Give it one instance method, #compute, implemented by copying the body of the original method.
# Replace the method with one that creates instance of the new class and sends it #compute.

class Obligation
  def send_task(task, job)
    notProcessed =
    processed =
    copied =
    executed =
    #...150 lines of heavily commented code...
  end

  # Using composed method we get method like this
  def prepare_task(task, job, not_processed, processed, copied, executed)
  end
end

# Method object
class TaskSender
  def initialize(obligation, task, job)
    @obligation = obligation
    @task = task
    @job = job
  end

  def compute
    #...150 lines of heavily commented code...
    # Now we can use Composed Method
  end
end

class Obligation
  def send_task(task, job)
    TaskSender.new(self, task, job).compute
  end
end
