puts "Grandma:  Who is it?"
name = gets.chomp.capitalize
puts


puts "Come in " + name + ". Tell me how was your day?"
check = 0
while check < 3
answ = gets.chomp

    if answ != answ.upcase
      puts "CAN\'T HEAR YOU! SPEAK UP!"
      check =0
    else
      if answ == "BYE!"
        puts "I WOULD LIKE YOU TO STAY A BIT LONGER"
        check +=1
      else
        puts "NO, NOT SINCE #{rand(1930..1951)}!!"
        check =0
      end
    end

end
