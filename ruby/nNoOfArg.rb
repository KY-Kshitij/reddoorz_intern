
# for *args => converts args into array
# introduce("Kshitij", 22)
#           ↑          ↑
#        position 1  position 2

# That's why they're called positional arguments.



# for **args => converts args into hash
# Keyword arguments

# Here, you explicitly give the name/key of each argument.

# def introduce(name:, age:)
#   puts name
#   puts age
# end

# introduce(name: "Kshitij", age: 22)  






def add(*numbers)
  p numbers
end

add(1)
add(1, 2)
add(1, 2, 3, 4)


#8. Required + **kwargs
def employee(id, **details)
  puts id
  p details
end

employee(101, name: "John", salary: 50000)


#Real-World Example

# Imagine an online store:

def place_order(customer, *items, payment:, **options)
  puts "Customer: #{customer}"
  puts "Items: #{items.join(', ')}"
  puts "Payment: #{payment}"
  p options
end

place_order(
  "Alice",
  "Laptop",
  "Mouse",
  "Keyboard",
  payment: "UPI",
  coupon: "SAVE10",
  express: true
)

#Output

#Customer: Alice
#Items: Laptop, Mouse, Keyboard
#Payment: UPI
#{:coupon=>"SAVE10", :express=>true}