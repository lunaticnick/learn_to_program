puts
array =[]
puts "Give me the words you want to add to the array"
puts "(When you have given all the words you want, just press Enter)"
puts

word=" "
# Investigate how the empty ENTER is not incorporated into the array
while word !=""
  word =gets.chomp
  array.push(word)
end

puts

puts "Your sorted array is the following:"
puts array.sort
