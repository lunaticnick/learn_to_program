puts "Give me a start year"
start_yr=gets.chomp.to_i
puts "Give me a finish year"
finish_yr=gets.chomp.to_i
puts
puts

puts "The leap years in the range you have provided are:"

while start_yr<=finish_yr

if start_yr%400==0
  puts start_yr
elsif start_yr%100 == 0
  
elsif start_yr%4==0
  puts start_yr
end

  start_yr += 1

end
