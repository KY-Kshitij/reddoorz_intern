# how to access something inside a class/module.
# Why do we need ::?
# Suppose you have two classes:

class Student
  NAME = "Student Name"
end

class Teacher
  NAME = "Teacher Name"
end

# Now:

puts Student::NAME
puts Teacher::NAME

# Output:

# Student Name
# Teacher Name

# Without ::, Ruby wouldn't know which NAME you want.

# So :: helps you specify the scope.



# edge case or use case

#1
# Accessing a class inside a module

module Payment
  class CreditCard
    def pay
      puts "Paid"
    end
  end
end

payment = Payment::CreditCard.new
payment.pay

# Output:Paid


# 2
NAME = "Global Name"

class Person
  NAME = "Person Name"

  def self.show
    puts NAME
    puts ::NAME
  end
end

Person.show

# Output:

# Person Name
# Global Name

# This is an important use of ::.

# Inside Person: NAME

# means:# Look for NAME in the current lexical scope.

# But: # ::NAME

# means:Start looking from the top-level Object namespace.