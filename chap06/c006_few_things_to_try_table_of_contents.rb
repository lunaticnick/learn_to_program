=begin

Initially started with line_width of 50 but the aligment was not working
#as Chapter 1 string is more than 50/2 characters so used 60

=end

line_width = 60

puts "Table of Contents".center(line_width)
puts
puts "Chapter 1: Getting Started".ljust(line_width/2) + "page 1".rjust(line_width/2)
puts "Chapter 2: Numbers".ljust(line_width/2) + "page 9".rjust(line_width/2)
puts "Chapter 3: Letters".ljust(line_width/2) + "page 13".rjust(line_width/2)
