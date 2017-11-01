#Boss program enhanced with if routine

puts "Knock, Knock"
puts "....."
puts


puts "Boss: Who is there?"
name = gets.chomp.capitalize
puts
puts "Me: It is " + name + " ?"
puts "    Can I come in?"
puts


puts "Boss: What do you want " + name + " ?"
puts
print "Me: "
answer = gets.chomp.upcase
puts
if answer == "I WANT A RAISE"
boss_answer_1 = "whaddaya mean \"I want a raise\"?!? you are fired!!"
puts "Boss:" + boss_answer_1.upcase
else
  puts "I will think about it."
end
puts
