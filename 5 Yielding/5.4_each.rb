# class Array
#     def my_each
#         i = 0
#         while i < self.size
#             yield self[i]
#             i += 1
#         end
#     end
# end

# weekdays = ['Monday', 'Tuesday', 'Wenesday', 'Thursday', 'Friday']
# weekdays.each { |day| puts day }


class Array
    def each
        i = 0
        while i < self.size
            yield self[i]
            i += 1
        end
        self
    end
end

weekdays = ['Monday', 'Tuesday', 'Wenesday', 'Thursday', 'Friday']
weekdays.each { |day| puts day }.map {|day| day.upcase}