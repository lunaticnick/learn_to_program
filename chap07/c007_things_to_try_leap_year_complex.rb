
puts "Give me a starting date"
start_yr = gets.chomp.to_i
puts "Give me an end date"
finish_yr = gets.chomp.to_i
puts

puts "The leap years in the range you have provided are:"
while start_yr <= finish_yr
  if (start_yr%4 == 0) || (start_yr%400 == 0)
    puts start_yr unless (start_yr%100==0)
    end
  start_yr += 1
end
puts
