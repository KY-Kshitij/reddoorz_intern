# First, what is a closure?

# Imagine you have a method:

def create_greeting
  name = "Kshitij"

  proc do
    puts "Hello #{name}"
  end
end

# The proc is created inside create_greeting.

# Normally, you might think that when create_greeting finishes, the local variable name should disappear.

# But:

greeting = create_greeting

greeting.call

# Output:

# Hello Kshitij

# The Proc still remembers name.

# That is the key idea of a closure.

# create_greeting
  #     |
  #     | creates
  #     v
  #  Proc
  #     |
  #     | remembers
  #     v
  #  name = "Kshitij"