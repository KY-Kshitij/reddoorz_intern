
def hello
  puts "Before"
  yield
  puts "After"
end

hello do
  puts "Inside Block"
end

#yield lets a method execute the block passed to it.
#yield = "Method ke saath jo block diya gaya hai, usko yahan execute karo."

#Output:
#Before
#Inside Block
#After

def print_twice
  puts "First"
  yield
  puts "Third"
end

print_twice { puts "Second" }
# Output:
# First
# Second
# Third


def calculate
  result = yield(5)
  puts "The block result is: #{result}"
end

calculate { |x| x * x } 
# Output: The block result is: 25


def calculate
  result = yield(5)
  puts "The block result is: #{result}"
end

calculate { |x| x * x } 
# Output: The block result is: 25


#Execution:

#hello
# ↓
#Before
#  ↓
#yield
#  ↓
#Block runs
#  ↓
#After