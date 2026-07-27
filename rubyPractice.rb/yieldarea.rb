class Area
  def operation
    puts "Calculationg area"
    if block_given?
      return yeild
    end
    puts "Error calculating area"
  end
end

Area.new.operation{

   define_methods(:circle, :rectangle, :square, :triangle) do |shape|
     case shape
     when :circle
       puts "Enter radius"
       r = gets.to_i
       puts "Area of circle is #{3.14*r*r}"
     when :rectangle
       puts "Enter length and breadth"
       l = gets.to_i
       b = gets.to_i
       puts "Area of rectangle is #{l*b}"
     when :square
       puts "Enter side"
       s = gets.to_i
       puts "Area of square is #{s*s}"
     when :triangle
       puts "Enter base and height"
       b = gets.to_i
       h = gets.to_i
       puts "Area of triangle is #{0.5*b*h}"
     else
       puts "Invalid shape"
     end
   end
}