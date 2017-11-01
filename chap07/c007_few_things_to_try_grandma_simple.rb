puts "Say something to grandma"

while true
 tell = gets.chomp

 if tell == "BYE!"
   puts "GOOD BYE SONNNY!!"
   break
 end

 if tell != tell.upcase
   puts "HUH?! SPEAK UP SONNY!"
 else
   puts "NO, NOT SINCE #{rand(1930..1951)}"
 end

end
