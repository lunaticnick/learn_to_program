
puts
table = ["Table of Contents", "Chapter 1: Numbers", "page 1", "Chapter 2:  Letters", "page 72", "Chapter 3:  Variables" , "page 118"]
puts

x = 0
line_width = 60

puts table[0].upcase.center(line_width)
puts

  until x == 6
    puts (table[x += 1].ljust(line_width/2) + table[x+= 1].rjust(line_width/2))
  end
