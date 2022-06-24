# style 1
3.times() do
	puts "Echo!"	
end
puts "==========="
# style 2
4.times() { puts "Echo!" }
puts "==========="
# style 1
# 5.times do |number|
# 	puts "#{number} Echo!"
# end
5.times do |n|
	puts "#{n} Echo!"
end
puts "==========="
5.times { |n| puts "#{n} Echo!"}