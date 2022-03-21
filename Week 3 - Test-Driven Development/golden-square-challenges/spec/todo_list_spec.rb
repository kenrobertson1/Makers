require 'todo_list'

RSpec.describe TodoList do
  it "Creates a blank list of tasks that accepts user input" do
    tasks = TodoList.new
    expect(tasks.list).to eq []
  end

  it "Adds user inputted tasks to list" do
    tasks = TodoList.new
    tasks.add("Buy milk")
    expect(tasks.list).to eq ["Buy milk"]
  end

  it "Doesn't accept dusplicate tasks" do
    tasks = TodoList.new
    tasks.add("Buy milk")
    expect(tasks.add("Buy milk")).to eq "Task already in list"
  end

  it "Removes completed tasks" do
    tasks = TodoList.new
    tasks.add("Buy milk")
    tasks.complete("Buy milk")
    expect(tasks.list).to eq []
  end

  it "Returns message when attemtping to complete task not in list" do
    tasks = TodoList.new
    expect(tasks.complete("Buy milk")).to eq "This task isn't in your list"
  end

end