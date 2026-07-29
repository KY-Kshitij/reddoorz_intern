def include_vowels?(str)
  vowels = ['a', 'e', 'i', 'o', 'u']

  has_vowel = str.downcase.chars.any? do |char|
    vowels.include?(char)
  end

  raise "String does not contain any vowel" unless has_vowel

  true
end

puts include_vowels?("Priyankaa")
# true

# puts include_vowels?("rhythm")
# RuntimeError: String does not contain any vowel