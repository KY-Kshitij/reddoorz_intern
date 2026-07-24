
#creating a file and writing
File.write("users.txt", "Kshitij\nspy\nDy")


# puts File.read("users.txt") #file read
puts File.exist?("users.txt") # true

File.open("users.txt", "a") do |file|
  file.puts "\nHY"
end
 
puts File.read("users.txt")


File.open("users.txt", "r") do |file|
  file.each_line do |line|
    puts line
  end
end
    #or
file =  File.open("users.txt", "r")
puts file
file.close

#this will not work cuz we have to store file open in a variable
# puts  File.open("users.txt", "r")
# File.close

File.open("users.txt", "a") do |file|
  file.puts "Kshitij" #automatically adds a newline.
  file.write "\nHY"
end


# Reading All Lines as an Array
# You can use:
lines = File.readlines("users.txt")
puts lines

# You can then use array methods:
lines.each do |line|
  puts line.strip
end

#delete
File.delete("users.txt")

#rename
File.rename("users.txt", "customers.txt")


# File Information
# You can get information about a file using File methods.

# File size
puts File.size("users.txt")
# File type
puts File.file?("users.txt")
# Directory?
puts File.directory?("users.txt")
# Check readability
puts File.readable?("users.txt")
# Check writability
puts File.writable?("users.txt")




# A Small Complete Example
# Let's create a simple user storage system.

FILE_NAME = "users.txt"

def add_user(name)
  File.open(FILE_NAME, "a") do |file|
    file.puts name
  end

  puts "#{name} added successfully"
end

def show_users
  unless File.exist?(FILE_NAME)
    puts "No users found"
    return
  end

  File.foreach(FILE_NAME) do |line|
    puts line.strip
  end
end

add_user("Kshitij")
add_user("Rahul")
add_user("Aman")

puts "\nAll Users:"
show_users