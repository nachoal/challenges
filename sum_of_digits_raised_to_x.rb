def sum_digits(number)
  number.to_s.chars.map(&:to_i).inject(:+)
end

# block the upper limit for raising the number
upper_limit_power = 50
upper_limit       = 10**upper_limit_power
funny_numbers     = []

(2..10 * upper_limit_power).each do |number|
  number_power = number

  while number_power < upper_limit
    if number_power >= 10 && sum_digits(number_power) == number
      funny_numbers << number_power
    end
    number_power *= number
  end
end

# Select the 30th element from the array
p funny_numbers[30] # Answer => 248155780267521
