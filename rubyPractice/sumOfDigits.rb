#12 =3

def sumofdigit(n)
  n.to_s.chars.map(&:to_i).sum
end

puts sumofdigit(12)


# arr ke elements ko square kar ke add krow
arr=[1,2,3,4]
arr.map do |x|
   x*x
end

def sumofsquareofarr(arr)
  puts arr.reduce(:+)
end

#or using shorthand (use this)
arr.map{|x| x*x}.inject(:+)