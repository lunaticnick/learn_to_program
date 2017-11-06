# ------ GET THE DATE OF BIRTH ---------
puts "What year you were born [YYYY]?"
yr=gets.chomp.to_i
puts "What month you were born [MM]?"
mn=gets.chomp.to_i
puts "What day you were born [DD]?"
da=gets.chomp.to_i
date_of_birth = Time.gm(yr,mn,da)

# Compare to date today and convert to years
old = (Time.now - date_of_birth)/60/60/24/365
puts
puts "You are #{old} years old"
puts

# Give them the equivalnt number of SPANKS
x=1
puts "Let me give you a SPANK for each year that passed since you were born!!"
while Time.gm( yr+x , mn, da) < Time.now
puts "SPANK"
x += 1
end
