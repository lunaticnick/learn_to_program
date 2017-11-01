puts
puts "How amany bottles are on the wall?"
num_bot = gets.chomp.to_i

while num_bot > 0
  puts num_bot.to_s + " bottles on the wall, " + num_bot.to_s + " bottles on the wall"
  num_bot -= 1
  puts "Take one down and pass it around, " + num_bot.to_s + " bottles of beer on the wall."
  puts
end
