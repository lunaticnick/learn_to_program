puts
table = ["Table of Contents", "Chapter 1: Numbers", "page 1", "Chapter 2:  Letters", "page 72", "Chapter 3:  Variables" , "page 118"]
puts
line_width = 60

puts table[0].center(line_width)
puts

i = 1
j = 2
while i < table.length
puts (table[i].ljust(line_width/2) + table[j].rjust(line_width/2))
i += 2
j += 2
end
