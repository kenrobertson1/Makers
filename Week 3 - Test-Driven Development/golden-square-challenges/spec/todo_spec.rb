require 'todo_list'

RSpec.describe Todo do
  it "stores a task to do" do
    task1 = Todo.new("Buy bread")
    expect(task1.task).to eq "Buy bread"
  end

  it "marks tasks as done" do
    task1 = Todo.new("Buy bread")
    task1.mark_done!
    expect(task1.done?).to eq true
  end

  it "returns false when task isn't complete" do
    task1 = Todo.new("Buy bread")
    expect(task1.done?).to eq false
  end

end