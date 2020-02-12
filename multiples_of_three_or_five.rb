def add_multiples(upper_bound)
  (1...upper_bound).to_a.select { |n| multiple_of_3_or_5?(n) }.inject(:+)
end

def multiple_of_3_or_5?(number)
  (number % 3).zero? || (number % 5).zero?
end

# Answer:
p add_multiples(1000) # => 233168
