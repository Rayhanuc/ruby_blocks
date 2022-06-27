5.times() do |n|
  puts "#{n} time  ======="
  puts "#{n} situp"
  puts "#{n} pushup"
  puts "#{n} chinup"
end
puts "Another example"
1.upto(5) { |count| 
    puts "#{count} time  ======="
    puts "#{count} situp"
    puts "#{count} pushup"
    puts "#{count} chinup"
}
puts "print number every 3 step"

1.step(9, 3) do |count|
    puts "#{count} situp"
    puts "#{count} pushup"
    puts "#{count} chinup"
end