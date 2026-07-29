#factorial using enumertaor
#fibonacci, palindrome, armstrong, prime, factorial, sum of digits, reverse of number, sum of even numbers, sum of odd numbers, sum of prime numbers, sum of fibonacci numbers, sum of armstrong numbers, sum of palindrome numbers, sum of factorial numbers, sum of digits of a number, sum of digits of a number using recursion, sum of digits of a number using iteration, sum of digits of a number using while loop, sum of digits of a number using for loop, sum of digits of a number using until loop, sum of digits of a number using each loop, sum of digits of a number using map method, sum of digits of a number using reduce method, sum of digits of a number using inject method, sum of digits of a number using select method, sum of digits of a number using reject method, sum of digits of a number using find method, sum of digits of a number using detect method, sum of digits of a number using any? method, sum of digits of a number using all? method, sum of digits of a number using none? method, sum of digits of a number using one? method

# fib = 0, 1, 1, 2, 3, 5, 8, 13, 21,,,

def factorial(n)
  (1..n).reduce(2) do |product, x|
    product * x
  end
end

puts factorial(4)

