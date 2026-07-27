class Calculator
  def operations
    puts "Performing calculations"
    if block_given?
        yield
    else 
      puts "Error performing calculation"
    end
  end
end


# method- using procs and yield
Calculator.new.operations {
#calculator using procs

#taking input from the user
puts "Enter two numbers"
a = gets.to_i 
b = gets.to_i 

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
}





# method-2 using yield and define_method

Calculator.new.operations {
#calculator using procs

#taking input from the user
puts "Enter two numbers"
@a = gets.to_i 
@b = gets.to_i 

puts "Enter the operation you want to perform: add, subtract, multiply, divide"
@operation = gets.chomp
class Calculator
  [:add, :subtract, :multiply, :divide].each do |operation|
    define_method(operation) do |a, b|
      case operation
      when :add      then a + b
      when :subtract then a - b
      when :multiply then a * b
      when :divide   then a / b
      end
    end
  end
end
}