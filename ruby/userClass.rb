class User
  attr_reader :name, :age, :email

  @@users = [] #class variable

  def initialize(name, age, email)
    @name = name
    @age = age
    @email = email
  end

  def self.input
    print "Name: "
    name = gets.chomp

    print "Age: "
    age = gets.chomp.to_i

    print "Email: "
    email = gets.chomp

    User.new(name, age, email)
  end

  def self.add(user)
    @@users << user
  end

  def self.remove(user)
    @@users.delete(user)
  end

  def self.find_by_name(name)
    @@users.find { |user| user.name == name }
  end

  def self.list
    @@users.each do |user|
      puts "Name: #{user.name}, Age: #{user.age}, Email: #{user.email}"
    end
  end
end