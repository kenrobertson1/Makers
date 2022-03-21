# Grammer Method Design Recipe

## 1. Describe the problem

_Put or write the user story here.  Add any clarifying notes you might have.

> As a user
> So that I can improve my grammar
> I want to verify that a text starts with a capital letter and ends with 
> a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, it's parameters, return value and side-effects.

```ruby
is_correct = check_grammar(text)

# * text is a string o words
# * is_correct is a Boolean that determines whether the text is formatted correctly
```

## 3. Create examples as tests

```ruby
# 1 
check_grammar("")
# => fail "Not a sentence!"

# 2
check_grammar("Nice weather.")
# => true

#3
check_grammar("Nice weather")
# => false

#4
check_grammar("NICE weather.")
# => true

#5
check_grammar("nice weather!")
# => false

#6
check_grammar("Nice weather!")
# => true

#7
check_grammar("Nice weather?")
# => true

#8
check_grammar("nICE WEATHER!")
# => false

## 4. Implement the behaviour