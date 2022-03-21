require 'todo_list'

RSpec.describe TodoList do
  it "initialises a list of todos" do
    todos = TodoList.new
    expect(todos.incomplete).to eq []
  end

  it "adds instances of todos" do
    todos = TodoList.new
    task1 = Todo.new("Buy bread")
    todos.add(task1)
    expect(todos.incomplete).to eq ["Buy bread"]
  end

  it "shows completed tasks" do
    todos = TodoList.new
    task1 = Todo.new("Buy bread")
    todos.add(task1)
    task1.mark_done!
    expect(todos.complete).to eq ["Buy bread"]
  end

  it "marks all tasks as complete" do
    todos = TodoList.new
    task1 = Todo.new("Buy bread")
    task2 = Todo.new("Go gym")
    todos.add(task1)
    todos.add(task2)
    todos.give_up!
    expect(todos.complete).to eq ["Buy bread", "Go gym"]
  end

end
