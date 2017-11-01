# full name greeting (without capitalisation)
puts "What is your first name?"
fname = gets.chomp
puts "What is your middle name?"
mname = gets.chomp
puts "What is your last name?"
lname = gets.chomp
puts

name_length = (fname + mname + lname).length


puts "Very pleased to meet you " + fname + " "+ mname + " " + lname +". Did you know that your name has "+ name_length.to_s + " characters?"
