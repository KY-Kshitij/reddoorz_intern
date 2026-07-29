
#finding the largest element in an array

arr = [1, 2, 5, 4]
arr.sort!
puts arr.last
puts arr[-2]

#largest and second largest using loops

largest = arr[0]
second_largest = arr[0]

arr.each do |i|

    if i > largest
      second_largest = largest
      largest = i
    
    elsif i > second_largest && i != largest
      second_largest = i
    end

end

puts second_largest


puts arr.uniq!