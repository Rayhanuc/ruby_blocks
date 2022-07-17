# 4.2 Enumerable-2
# Order.rb
# =============================
class Order

  TAX_TABLE = { "CO" => 0.02, "MT" => 0.00, "AZ" => 0.04 }
	attr_reader :email, :total, :state, :status

	def initialize( email, state, total, status=:pending )
		@email = email
		@state = state
		@total = total
		@status = status
	end

  def tax
    total * TAX_TABLE[state]
  end

	def to_s
		"#{email}: $#{state}: $#{total} - #{status}"
	end
end

orders = []
orders << Order.new("customer1@example.com", "MT", 300)
orders << Order.new("customer2@example.com", "AZ", 400, :completed)
orders << Order.new("customer3@example.com", "CO", 200)
orders << Order.new("customer4@example.com", "CO", 100, :completed)

puts "Big orders: "
puts orders.select { |o| o.total >= 300 }

puts "Small orders: "

small_orders = orders.reject { |o| o.total >= 300 }
puts small_orders

puts orders.any? { |o| o.status == :pending }

order = orders.detect { |o| o.status == :pending }
puts order

pending_orders, completed_orders = orders.partition { |o| o.status == :pending }

puts "Pending: "
puts pending_orders

puts "Completed: "
puts completed_orders

big_orders, small_orders = orders.partition { |o| o.total >= 300 }
puts "Big orders: "
puts "**********"
puts big_orders

puts "Small orders: " 
puts "**********"
puts small_orders

puts "Newsletter emails: "
emails = []
# orders.each { |o| emails << o.email.downcase }
emails = orders.map { |o| o.email.downcase }
p emails

# puts "Taxes:"
# co_orders = orders.select { |o| o.state == "CO" }
# co_taxes = co_orders.map { |o| o.tax }
# p co_taxes

puts "Taxes:"
co_taxes = orders.select { |o| o.state == "CO" }.map { |o| o.tax }
p co_taxes

# sum = 0
# orders.each { |order| sum += order.total }
# puts "Total sales: $#{sum}"

sum = orders.reduce(0) { |sum, order| sum + order.total }
puts "Total sales: $#{sum}"

total_tax = orders.reduce(0) { |total, order| total + order.tax }
puts "Total tax: $#{total_tax}"

total_tax2 = orders.map { |o| o.tax}.reduce(:+)
puts "Total tax: $#{total_tax2}"