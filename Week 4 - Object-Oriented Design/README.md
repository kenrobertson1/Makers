## Week 4: Object-Oriented Design

As a software developer, there are some things you can be sure of.

> 1. You're going to work on codebases that are, or will become, complex
> 2. How you manage complexity has long term consequences

Object Oriented Design (sometimes called Object Oriented Programming) is one way of ensuring that complexity is well managed and it's what we'll focus on this week.  It's important, however, to understand that other approaches exist and that the same goals underpin them all.

> We seek to write code that is easy to read, reason about and change by
> 1. Avoiding repetition
> 2. Breaking programs down into small, simple, pieces
> 3. Ensuring that the relationships between pieces are simple

Everything you learn about OOD this week will map onto one or more of those three goals.

### Getting started

#### Reflect on TDD

The skills and concepts dealt with this week consolidate and build on the things you learned last week, so take a moment to reflect on Test Driven Development.

* What did you learn about your progress from doing the Airport challenge?
* Can you test-drive a class with instance variables and methods?
* Can you test-drive two classes that work together?
* Do you always write tests first?

If you need to spend more time working on these things, go for it!

#### Read and discuss this module's goals

By the end of the module all developers can:
* Review another person's code and learn from what they wrote
* Review another person's code and give them meaningful feedback
* Explain some basic OO principles and tie them to high level concerns (e.g. ease of change)
* Break one class into two classes that work together, while maintaining test coverage

Stretch:
* Test classes in isolation using mocking and dependency injection
* Apply some basic OOP principles in tightly focused exercises

#### Read and discuss the relevant course goals

* I can write standards-compliant, clean object-oriented code
* I test-drive my code
* I can design a system

And you can remind yourself of the rest [here](https://github.com/makersacademy/course/blob/main/apprenticeship_starting_pack/course_goals.md).

### Resources
* [The 4 pillars of OOD](https://www.freecodecamp.org/news/object-oriented-programming-concepts-21bb035f7260/)
* [Practical Object Oriented Design in Ruby](https://www.poodr.com/), by Sandi Metz, is very highly regarded.  Put it on your post-bootcamp reading list if you don't have time for it now.
* [SOLID](https://rubygarage.org/blog/solid-principles-of-ood) principles with Ruby examples
* [Technical learning resources](https://airtable.com/shrtZmDUTQmQFdaZV/tblokmw6yNUO75ge6)

### Exercises for self-directed learning

These exercises can be used for independent study, or enhanced by group discussion.

The intention is that you should work through the core exercises in order, from the top to the bottom of the table, looking at optional exercises which interest you or which relate to key skills you feel the need to practice.


| Key Skill                          | Exercise                                                 |
| ---------------------------------- | -------------------------------------------------------- |
| Code Review                        | [Learn from someone else's code][code_review]            |
| Encapsulation                      | [Achieve high cohesion and low coupling][encapsulation]  |
| Refactoring                        | [Extract some variables, methods and classes][refactoring_using_oo]       |

| Stretch Skill                    | Exercise                                              |
| -------------------------------- | ----------------------------------------------------- |
| Dependency injection             | [Inject some dependencies!][dependency_injection]     |
| Mocking                          | [Mock the diary class][mocking]                       |

[bank]: https://github.com/makersacademy/course/blob/main/individual_challenges/bank_tech_test.md
[API]: https://rapidapi.com/collection/recommended-apis
[class]: https://www.lucidchart.com/pages/uml-class-diagram
[sequence]: https://www.lucidchart.com/pages/uml-sequence-diagram
[diagram]: https://www.diagram.codes/
[code_review]: https://github.com/makersacademy/skills-workshops/tree/main/object_oriented_programming/code_review
[encapsulation]: https://github.com/makersacademy/skills-workshops/blob/main/practicals/object_oriented_design/encapsulation.md
[forwarding_polymorphism]: https://github.com/makersacademy/skills-workshops/blob/main/practicals/object_oriented_design/oo_relationships.md
[refactoring_using_oo]: https://github.com/makersacademy/skills-workshops/blob/main/practicals/object_oriented_design/refactoring.md
[dependency_injection]: https://github.com/makersacademy/skills-workshops/blob/main/practicals/object_oriented_design/dependency_injection.md
[mocking]: https://github.com/makersacademy/skills-workshops/blob/main/practicals/object_oriented_design/testing_relationships.md

### Pairing challenge

The [Oyster Card](https://github.com/makersacademy/course/blob/main/oystercard) Challenge

### Individual challenge

[Takeaway](https://github.com/makersacademy/takeaway-challenge-apprenticeships)
