
puts "Give me a starting date"
st_date = gets.chomp.to_i
puts "Give me an end date"
en_date = gets.chomp.to_i
puts

puts "The leap years in the range you have provided are:"
while st_date <= en_date
  if (st_date%4 == 0) || (st_date%400 == 0)
    puts st_date unless (st_date%100==0)
    end
  st_date += 1
end
puts
