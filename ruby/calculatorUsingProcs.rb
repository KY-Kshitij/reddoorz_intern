#calculator using procs

#taking input from the user
puts "Enter two numbers"
a = gets.to_i 
puts a
b = gets.to_i 
puts b

puts "Enter the operation you want to perform: add, subtract, multiply, divide"
operation = gets.chomp

@add = Proc.new { |a, b| puts a + b }
@subtract = Proc.new { |a, b|puts a - b }  
@multiply = Proc.new { |a, b| puts a * b }
@divide = Proc.new { |a, b| puts a / b }

def calculate(a, b,operation)
  case operation
  when "add"
    @add.call(a, b)
  when "subtract"
    @subtract.call(a, b)
  when "multiply"
    @multiply.call(a, b)
  when "divide"
    @divide.call(a, b)
  else
    puts "Invalid operation"  
  end
  #operation.call(a, b)
end

calculate(a, b, operation)





