puts "This is the program writing the lyrics for the well versed 99 bottles of beer"
puts

no = 99
while no > 0
  puts no.to_s + " bottles of beer on the wall, " + no.to_s + " bottles of beer"
  no = no - 1
  puts "Take one down and pass it around, " + no.to_s + " bottles of beer on the wall."
end



=begin
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.
=end
