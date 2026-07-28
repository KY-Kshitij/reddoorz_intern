class Area
  def operation
    puts "Calculating area"

    if block_given?
      return yield
    end

    puts "Error calculating area"
  end

  [:circle, :rectangle, :square, :triangle].each do |shape|

    define_method(shape) do
      case shape

      when :circle
        puts "Enter radius of a circle"
        r = gets.to_i
        puts "Area of circle is #{3.14 * r * r}"

      when :rectangle
        puts "Enter length and breadth of rectangle"
        l = gets.to_i
        b = gets.to_i
        puts "Area of rectangle is #{l * b}"

      when :square
        puts "Enter side of a square"
        s = gets.to_i
        puts "Area of square is #{s * s}"

      when :triangle
        puts "Enter base and height of a triangle"
        b = gets.to_i
        h = gets.to_i
        puts "Area of triangle is #{0.5 * b * h}"

      else
        puts "Invalid shape"
      end
    end

  end
end

area = Area.new

area.operation do
  area.circle
  area.rectangle
  area.square
  area.triangle
end