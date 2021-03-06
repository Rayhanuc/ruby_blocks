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
5.times do
	orders << Order.new("customer@example.com", 10)
end
# puts "upto ==========="
# 1.upto(5) do |n|
# 	orders << Order.new("customer#{n}@example.com", n * 10)
# end

puts orders