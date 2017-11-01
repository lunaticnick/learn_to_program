puts "What is your first name?"
name = gets.chomp.capitalize
puts "What is your middle name?"
middle_name = gets.chomp.capitalize
puts "what is your last name?"
last_name = gets.chomp.capitalize
puts
name_length = name.length + middle_name.length + last_name.length
puts name_length
puts
puts "Nice to meet you " + name +" "+ middle_name + " " + last_name + " !\n"
puts "Oh, did you know that your name has "+ name_length.to_s + " letters?"
puts
