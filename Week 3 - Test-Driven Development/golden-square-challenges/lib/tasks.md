# Task Method Design Recipe

## 1. Describe the problem

> As a user
> So that I can keep track of my tasks
> I want to check if a text includes the string @TODO

## 2. Design the method signature

```ruby
is_todo = task_checker(text)

# * text is a string of words
# * is_todo is a boolean that determines whether the text includes @aTODO
```

## 3. Create examples as tests

```ruby
#1
task_checker("@TODO")
# => true

#1
task_checker("buy milk @TODO")
# => true

#1
task_checker("go to the gym")
# => false

#1
task_checker("Go shopping @todo")
# => false

#1
task_checker("Go to the gym TODO")
# => true

```

## 4. Implement the behaviour
