def deep_dup(obj)
  case obj
  when Array
    obj.map { |e| deep_dup(e) }  #recursive step

  when Hash
    obj.each_with_object({}) do |(k, v), h|
      h[deep_dup(k)] = deep_dup(v)  #recursive step
    end

  else
    obj.dup rescue obj  #actually mein yaha pe elements deep copy horhe (base case)
  end
end

original = {
  "name" => "Alice",
  "age" => 25,
  "skills" => ["Ruby", "Python", 100],
  "address" => {
    "city" => "Delhi",
    "pincode" => 110001,
    "landmarks" => ["Metro", "Mall", 50]
  }
}

copy = deep_dup(original)

# Modify the copied object
copy["name"] = "Bob"
copy["skills"][0] = "Java"
copy["skills"][2] = 999
copy["address"]["city"] = "Mumbai"
copy["address"]["landmarks"][1] = "Airport"

puts "Original:"
p original

puts "\nCopied:"
p copy

#recursion used


#shallow copy 
#normally copy krta hai (if not nested)
#agar "nested" array/hash huwa to original mein change krne pe copied wala bhi chnage ho jayega

##most imp
dup 
# hmesha shallow copy karega agar nested hoga toh reference se copy kr deta hai 