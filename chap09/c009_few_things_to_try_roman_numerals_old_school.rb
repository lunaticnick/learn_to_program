def old_roman_numeral x
 roman_num = " "

 roman_num = roman_num + "M"*(x/1000)
# Use the modulus to divide the remainder of previous division with the next set of numbers
 roman_num = roman_num + "D"*(x%1000/500)
 roman_num = roman_num + "C"*(x%500/100)
 roman_num = roman_num + "L"*(x%100/50)
 roman_num = roman_num + "X"*(x%50/10)
 roman_num = roman_num + "V"*(x%10/5)
 roman_num = roman_num + "I"*(x%5)
end

puts old_roman_numeral 3664
puts old_roman_numeral 567
puts old_roman_numeral 18
