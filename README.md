## Ruby OOP



Today's breakout focuses on showing how to think conceptually in oop and how to build an easy battle simulator

### What is a Class?
A blueprint of something. Think about us as people. We are all dervied from class `Person`. Each person has eyes, legs, arms, etc. Also Person class maybe has methods such as, talk, or communicate, see, walk, heal, etc.

```ruby
class Human
end
```


### What's the difference between a class and an object?
An object is an INSTANCE of a class.
Ruby object !== JS object. Ruby objects are more strict.

Intialize Method is just a constrcutor for your class. It makes an instance of the class

```ruby
class Human
  #remember brackets can be added but not manditory because ruby doesn't need them :)
  def initialize name, age, health
    # ...
  end
end
```


### What are Instance variables and how are they used?
Ruby's version of this. Uses the `@` symbol (also refered to as properties of the class). Instance variables become private. You need to make acessor and mutator functions to either use or overwrite thouse variables.

```ruby
class Human
  def initialize name, age, health
    @name = name
    @age = age
    @attack = 2
    @health = health
  end
end
```

### What are attribute accessors and readers?
Allow the instance to EXPOSE variables (either to read or manipulate)

```ruby
class Human

  attr_accessor :name, :age, :health # now I dont have to write custom functions for these variables to be accessed or mutated

  # other methods and functions bellow . . . .
```
Difference between `attr_accessor`, `attr_reader`, `attr_writer`
```ruby
  attr_accessor # read and write
  attr_writer   # only write
  attr_reader   # only read
```

### Inheritence
If a class inherits another class, that class gets all the functions and instance variables of that class

```ruby
class Knight < Human # Knight has all functions and properties of the Human class
```

If parent class has a function name as the child class, then child will overwrite the parents function.

```ruby
  class Human
    # ...
    def hello
      puts "Hi"
    end
  end

class Knight < Human
    # ...
    def hello # parent method overwritten by this one.
      puts "Greetings Traveller"
    end
  end
```

To call the method of the parent of the same function name, just write the word `super`

```ruby
  class Human
    # ...
    def hello
      puts "Hi"
    end
  end

class Knight < Human
    # ...
    def hello
      super # calls hello method from the Human class
    end
  end
```




