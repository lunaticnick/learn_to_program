# full name greeting (without capitalisation)
puts "What is your first name?"
fname = gets.chomp
puts "What is your middle name?"
mname = gets.chomp
puts "What is your last name?"
lname = gets.chomp
puts
puts "Very pleased to meet you " + fname + " "+ mname + " " + lname
puts

# full name greeting (with capitalisation)
puts "What is your first name?"
fname = gets.chomp
puts "What is your middle name?"
mname = gets.chomp
puts "What is your last name?"
lname = gets.chomp
puts
puts "Very pleased to meet you " + fname.capitalize + " "+ mname.capitalize + " " + lname.capitalize
