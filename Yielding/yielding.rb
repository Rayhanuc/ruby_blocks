# Method 1:
# 3.times do
# 	puts "Running blocks!"
# end
# ====


# Method 2:
# def run_my_block
# 	puts "Starting method..."
# 	yield
# 	puts "Back in method."
# end

# run_my_block do
# 	puts "The time is now #{Time.now}"
# end


# Method 3:

# def roll
# 	puts "Starting method..."
# 	yield
# 	yield
# 	yield
# 	puts "Back in method."
# end

# def roll
# 	puts "Starting method..."
# 	yield if block_given?
# 	puts "Back in method."
# end

# def roll
# 	puts "Starting method..."
# 	number = rand(1..6)
# 	yield "Larry", number
# 	yield "Moe", number
# 	puts "Back in method."
# end


# roll 
# do
# 	number = rand(1..6)
# 	puts "You rolled a #{number}"
# end

def roll
	number = rand(1..6)
	result = yield("Larry", number)
	puts "The block returned #{result}"
end

roll do |name, number|
	puts "#{name} rolled a #{number}"
	number * 2
	puts "Hello!"
end
