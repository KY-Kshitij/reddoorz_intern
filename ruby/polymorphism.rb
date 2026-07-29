class Dog
  def speak
    puts "Woof"
  end
end

class Cat
  def speak
    puts "Meow"
  end
end

class Cow
  def speak
    puts "Moo"
  end
end

animals = [
  Dog.new,
  Cat.new,
  Cow.new
]

animals.each do |animal|
  animal.speak
end


