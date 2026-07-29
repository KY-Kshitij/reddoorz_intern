# class Employee
#   [:name, :age].each do |attribute|
#     define_method(attribute) do
#       instance_variable_get("@#{attribute}")
#     end
    
#     define_method("#{attribute}=") do |value|
#       instance_variable_set("@#{attribute}", value)
#     end
#   end
# end

# e1=Employee.new
# e1.name = "k"
# e1.age = "22"

# puts e1.name
# puts e1.age


#calculator
class Calculator
  
  puts "Enter two numbers"
  @a = gets.to_i
  @b = gets.to_i 
  puts "Enter operation"
  @operation = gets.chomp.to_sym
  puts "calculating area" 
  def operation
    if block_given?
      yield
    end
  end

end

Calculator.new.operation{
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
}

# puts calculator.add(10, 5)
# puts calculator.subtract(10, 5)