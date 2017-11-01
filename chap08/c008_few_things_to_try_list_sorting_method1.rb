puts
array =[]
puts "Give me the words you want to add to the array"
puts "(When you have given all the words you want, just press Enter)"
puts

 while true
   word =gets.chomp
   if word.length >0
     array.push(word)
   else
     break
   end
end

puts

puts "Your sorted array is the following:"
puts array.sort
