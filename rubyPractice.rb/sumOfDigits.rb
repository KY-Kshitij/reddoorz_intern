#12 =3

def sumofdigit(n)
  n.to_s.chars.map(&:to_i).sum
end

puts sumofdigit(12)