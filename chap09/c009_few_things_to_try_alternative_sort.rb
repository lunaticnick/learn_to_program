def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == "yes" || reply == "no")
      if reply == "yes"
        return true
      end
      if reply == "no"
        return false
      end
      puts "Please reply \"Yes\" or \"No\""
    end
  end
end

puts "thank you for participating...."
puts
ask "Do you Like Tacos"
wet_bed = puts ask "Do you wet your bed?"
puts

puts "The participant" wet_bed
