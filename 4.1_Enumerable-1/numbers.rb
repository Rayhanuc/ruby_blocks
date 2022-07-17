numbers = [1, 2, 3, 4]

# result = numbers.reduce(0) { |sum, number| sum + number }
# result = numbers.reduce(0, :+)
# result = numbers.reduce(:*)
result = numbers.reduce(:+)
puts result