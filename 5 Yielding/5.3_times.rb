# def three_times
#     yield 0
#     yield 1
#     yield 2
# end

# 3.times { |n| puts "#{n} Echo!"}

# def n_times(number)
#     i = 0
#     while i < number
#         yield i
#         i += 1
#     end
# end

# n_times(20) { |n| puts "#{n} Echo!"}

class Integer
    def n_times
        i = 0
        while i < self
            puts "Yielding #{i}..."
            yield i
            i += 1
        end
    end
end

12.n_times { |n| puts "#{n} Echo!"}