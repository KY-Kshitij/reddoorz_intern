# self = the object currently doing the work
# 
#Why do we use self?

# Suppose:
class Person
  attr_accessor :name

  def change_name
    self.name = "Kshitij"
  end
end

# 1. Create a new instance of Person
u = Person.new

# 2. Set the initial name to "ky"
u.name = "ky"
puts "Original Name: #{u.name}" # Outputs: ky

# 3. Change the name using your method
u.change_name
puts "Updated Name: #{u.name}"  # Outputs: Kshitij
