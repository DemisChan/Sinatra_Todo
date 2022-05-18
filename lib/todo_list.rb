class TodoList
  def initialize
    @tasks = []
  end

  def list
    return @tasks
  end

  def add(task) # task is a string
    @tasks << task
  end

  def get(index)
    @tasks[index-1]
  end

  # def update(index, new_task) # index is a number, new_task is a string
  #   # Updates the task at index to be the text new_task
  #   # No return value
  # end

  # def remove(index) # index is a number
  #   # Deletes the task at index
  # end
end