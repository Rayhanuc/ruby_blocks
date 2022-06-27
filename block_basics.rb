puts "times ==========="
# style 1
3.times() do
	puts "Echo!"	
end
puts "times ==========="
# style 2
4.times() { puts "Echo!" }
puts "times ==========="
# style 1
# 5.times do |number|
# 	puts "#{number} Echo!"
# end
5.times do |n|
	puts "#{n} Echo!"
end
puts "times ==========="
5.times { |n| puts "#{n} Echo!"}
puts "upto ==========="
1.upto(3) { |n| puts "#{n} Echo!"}