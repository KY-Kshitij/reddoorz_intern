def greet(name)
  "Hello, #{name}"
end

# Store the method in a variable
method_obj = method(:greet)

# Call the method
method_obj.call("Alice")
#=> "Hello, Alice"


why we needed proc?

What if I want to create behaviour dynamically?
=>proc
=>to create a piece of behaviour without putting it inside a class.