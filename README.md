# Object Relationships

## Quick Review

- What is the difference between a class and instance?
  class is factory, instances are the product of the factory 
- What method creates a new instance?
.new => invokes initialize 
- How do we dedicate attributes to objects?
    setters/getters : reader/writer | attr_accessor , attr_reader, attr_writer
- What is an `attr_accessor`?
creates reader/writer for us 
- How do we write a setter and getter method?
#setter/writer method
def name=(name)
@name = name 
end
#getter/reader 
def name 
@name
end
- What is an instance variable, and what is the scope?
   variable that any instance method can use, scope => within instance methods  
- What is the goal of the `@@all` variable?
collect all of the instances of that class in an array 
- How do we `save` an instance?
    @@all << self   
- What is self? How to identify?
   class => class method / class itself
   instance object => instance method 
## Belongs to
    - child object 
    - single relationship => .customer 
    - reader and writer for association 
    - can it relate to different models, but only 1 instance of those models 
## Has Many
    - multiple relationships => .orders
    - array that collects all the related objects 
    - parent object 
## Has Many Through
    - one model joins two unrelated models through itself


Starbucks Domain:
customer - has many orders / has many baristas through orders
order - belong to a customer / belong to barista
barista - has many orders /has many customers through orders