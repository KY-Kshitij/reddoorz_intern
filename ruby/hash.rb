person = {
  name: "Kshitij",
  age: 22
}
person[:name]

#Output

#"Kshitij"

#Wrong key

person[:city]

#Output

#nil

#No error.

#update
person[:name] = "ky"

#delete
person.delete(:age)

#size
person.size
person.length

person.key?(:name)
person.key?(:city)
person.value?("ky")

#iteration
person.each do |key, value|
  puts "#{key}: #{value}"
end


#Default Values
h = Hash.new(0)
h[:apple]

#Output
#0

#No key exists.
#Still returns default.
person.fetch(:salary, 0)
#output = 0


#Edge Case (Very Important)
h = Hash.new([])
h[:a] << 1

#Now
h[:b]

#Output = [1]
#Why?
#Because the SAME array is reused for every missing key.

#Correct way

h = Hash.new { |hash, key| hash[key] = [] }
# most importatnt H must be capital 
#Now each key gets its own array.


# merge
# Duplicate key

a = {x:1}
b = {x:10}

a.merge(b)

# Output: {x:10}
# Second hash wins.



# Invert
{
  a:1,
  b:2
}.invert

# Output
{
  1=>:a,
  2=>:b
}


#chatGPT reference: https://chatgpt.com/share/6a58822b-6f9c-83ee-9a16-df200bd479f9
#see from ending



Here are the most important Hash methods, each with a one-line example + syntax.

Assume:

h = { name: "Kshitij", age: 22, city: "Delhi" }
Access / Add / Update
h[:name]                         # => "Kshitij"
h[:email] = "a@test.com"         # Add
h[:age] = 23                     # Update
fetch
h.fetch(:name)                   # => "Kshitij"
h.fetch(:salary, 0)              # => 0
delete
h.delete(:age)                   # => 22
key? / has_key?
h.key?(:name)                    # => true
h.has_key?(:name)                # => true
value? / has_value?
h.value?("Delhi")                # => true
h.has_value?("Delhi")            # => true
keys
h.keys                           # => [:name, :age, :city]
values
h.values                         # => ["Kshitij", 22, "Delhi"]
each
h.each { |key, value| puts "#{key}: #{value}" }
each_key
h.each_key { |key| puts key }
each_value
h.each_value { |value| puts value }
select
h.select { |key, value| value.is_a?(String) }  # => {name: "Kshitij", city: "Delhi"}
reject
h.reject { |key, value| value.is_a?(String) }  # => {age: 22}
merge
h.merge({ age: 25, country: "India" })         # => merged hash
merge!
h.merge!({ age: 25 })                           # Modifies h
invert
{ a: 1, b: 2 }.invert                           # => {1=>:a, 2=>:b}
transform_values
{ a: 1, b: 2 }.transform_values { |v| v * 2 }  # => {a: 2, b: 4}
transform_keys
{ "name" => "A" }.transform_keys(&:to_sym)      # => {name: "A"}
dig
{ user: { name: "A" } }.dig(:user, :name)      # => "A"
compact
{ a: 1, b: nil }.compact                       # => {a: 1}
slice
h.slice(:name, :age)                            # => {name: "Kshitij", age: 22}
except
h.except(:age)                                  # => {name: "Kshitij", city: "Delhi"}
empty?
h.empty?                                        # => false
size / length
h.size                                          # => 3
h.length                                        # => 3
clear
h.clear                                         # => {}
replace
h.replace({ country: "India" })                 # => {country: "India"}
to_a
h.to_a                                          # => [[:name, "Kshitij"], [:age, 22], ...]
to_h
[[:name, "A"], [:age, 22]].to_h                 # => {name: "A", age: 22}
default
h.default                                      # => nil
default_proc
h.default_proc                                 # => nil
default=
h.default = "Not Found"                        # Missing keys return "Not Found"
fetch_values
h.fetch_values(:name, :city)                    # => ["Kshitij", "Delhi"]
values_at
h.values_at(:name, :city)                      # => ["Kshitij", "Delhi"]
any?
h.any? { |key, value| value == 22 }            # => true
all?
h.all? { |key, value| !value.nil? }             # => true
none?
h.none? { |key, value| value.nil? }             # => true
find
h.find { |key, value| value == 22 }             # => [:age, 22]
filter
h.filter { |key, value| value.is_a?(Integer) } # => {age: 22}
filter!
h.filter! { |key, value| value.is_a?(Integer) } # Modifies h
The syntax pattern to remember

For normal methods:

hash.method_name(arguments)

For methods with blocks:

hash.method_name { |key, value| condition }

For methods that transform data:

hash.method_name { |key, value| new_value }