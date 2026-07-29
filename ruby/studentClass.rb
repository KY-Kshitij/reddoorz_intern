class StudentClass
  attr_accessor :cname, :age, :grade

  def initialize(cname, age, grade)
    @cname = cname
    @age = age
    @grade = grade
  end
#name = "John Doe"
end
puts s1 = StudentClass.new("John Doe", 20, "A")
puts s1.cname
 