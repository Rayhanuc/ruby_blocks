class Order
	attr_reader :email, :total

	def initialize(email, total)
		@email = email
		@total = total
	end

	def to_s
		"#{email}: $#{total}"
	end
end

orders = []
# 5.times do
# 	orders << Order.new("customer@example.com", 10)
# end
puts "upto ==========="
1.upto(5) do |n|
	orders << Order.new("customer#{n}@example.com", n * 10)
end

puts "Newsletter emails:"

# orders.each do |order|
#   puts order.email
# end

orders.each { |o| puts o.email }

sum = 0
orders.each { |o| sum += o.total }

puts "Total sales: $#{sum}"

taxes = { "CO" => 0.02, "MT" => 0.00, "AZ" => 0.04,}
taxes.each do |key, value|
  puts "#{key}: #{value * 100}%"
end