def profile block_description, &block

  puts "Do you want profiling ON or OFF?"
  profiling_on= gets.chomp.downcase

  until profiling_on == "on" || profiling_on == "off"
    puts
    puts "Please define if you want profiling ON or OFF"
    profiling_on= gets.chomp.downcase
  end # until END


  if profiling_on == "on"
    puts
    start_time = Time.new
    block.call
    puts
    duration = Time.new - start_time
    puts "The process \"#{block_description}\" took #{duration} seconds to compute"
  else profiling_on == "off"
    puts
    block.call
  end # if profiling_on  END

end # def profile END

# ------------------------------------------
# ---------- END OF METHOD SECTION --------
# ------------------------------------------



#  ---------- Example 1 ------------
profile '25000 doublings' do
  number = 1
  25000.times do
    number = number + number
  end

  puts "#{number.to_s.length} digits"
  # That's the number of digits in this HUGE number.
end

#  ---------- Example 2 ------------
#
# profile 'count to a million' do
#   number = 0
#   1000000.times do
#       number = number + 1
#   end
#   puts "I have counted to a million one by one"
# end
