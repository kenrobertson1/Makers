class TodoList
  def initialize
    @todos = []
    @incomplete = []
    @complete = []
  end

  def add(todo) 
    @todos << todo
  end

  def incomplete
    @todos.each {|todo| @incomplete << todo.task if todo.done? == false}
    @incomplete
  end

  def complete
    @todos.each {|todo| @complete << todo.task if todo.done?}
    @incomplete.each {|todo| @complete << todo.task if todo.done?}
    @complete
  end

  def give_up!
    @todos.each {|todo| todo.mark_done!}
    @incomplete.each {|todo| todo.mark_done!}
  end
end

class Todo
  def initialize(task) 
    @task = task
    @done = false
  end

  def task
    @task
  end

  def mark_done!
    @done = true
  end

  def done?
    @done
  end
end
