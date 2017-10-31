# How many hours in a year
puts "How many hours in a year: " + (365*24).to_s

puts

# How many minutes in a decade
puts "How many minutes in a decade: " + (10*365*24*60).to_s

puts

# How old are you?
puts "So I am: " + (38*365*24*60*60).to_s + "  seconds old"

puts

# If I am 1160 million seconds old, how old am I
age = 1160*10**6
age_in_years = age/3600/24/365


puts "Chris Pine is " + age_in_years.to_s + " years old"
