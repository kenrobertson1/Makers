# TodoList Class Design Recipe

## Describe the Problem

> As a user
> So that I can keep track of my tasks
> I want a program that I can add todo tasks to and see a list of them.

> As a user
> So that I can focus on tasks to complete
> I want to mark tasks as complete and have them disappear from the list.

## Design the Class Interface

```ruby
class TodoList
  def Initialize
  tasks = [] # empty list to take tasks
  end

  def add(task)
    # takes tasks and adds to list
  end

  def complete(task)
    # removes task from list when complete
  end

  def list
    # outputs list of tasks
  end
end
```

## Create Examples as Tests

```ruby
# 1. Creates and displays list of tasks
tasks = TodoList.new
tasks.list #=> []

# 2. Adds inputted tasks to list
tasks = TodoList.new
tasks.add("Buy milk") 
tasks.list #=> ["Buy milk"]

# 3. Doesn't accept duplicate tasks
tasks = TodoList.new
tasks.add("Buy milk")
tasks.add("Buy milk") #=> "Task already in list"

# 4. Removes completed tasks
tasks = TodoList.new
tasks.add("Buy milk")
tasks.complete("Buy milk")
tasks.list #=> []

# 5. Returns message when attempting to complete task not in list
tasks = TodoList.new
tasks.complete("Buy milk") #=> This task isn't in your list

```

## Implement the Behaviour