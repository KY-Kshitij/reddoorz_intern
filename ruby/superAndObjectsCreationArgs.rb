class Person
  def initialize(name)
    @name = name
  end
end

# I want to do my own work, but I also want the parent's work
class Student < Person
  def initialize(name, course)
    super(name)
    @course = course
  end
end

# student1  = Student.new   #error
#cuz
#When you create an object using ClassName.new(...),
# the arguments you need to provide are decided by the class's initialize method.

puts student1 = Student.new("Kshitij", "Computer Science") 


# 3 types of super

# 1.super # automatically send the same arguments.
# 2.super(name)
# 3.super() # Send nothing.


#edge cases
class Animal
end

class Dog < Animal
  def speak
    puts "Dog"
    super
  end
end

Dog.new.speak
#cuz no method speak in Animal class, so it will throw error