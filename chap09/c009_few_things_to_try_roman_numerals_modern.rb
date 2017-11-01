def modern_roman_numeral x
  thous = (x / 1000)
  hundr = (x%1000/100)
  tens  = (x%100/10)
  sing  = (x%10)

 roman_num = "M"* thous

 if hundr == 9
   roman_num = roman_num + "CM"
 elsif hundr == 4
   roman_num = roman_num + "CD"
 else
   roman_num = roman_num + "D"*(x%1000/500)
   roman_num = roman_num + "C"*(x%500/100)
 end

if tens == 9
  roman_num = roman_num + "XC"
elsif tens == 4
  roman_num = roman_num + "XL"
else
  roman_num = roman_num + "L"*(x%100/50)
  roman_num = roman_num + "X"*(x%50/10)
end

if sing == 9
  roman_num = roman_num + "IX"
elsif sing == 4
  roman_num = roman_num + "IV"
else
  roman_num = roman_num + "V"*(x%10/5)
  roman_num = roman_num + "I"*(x%5)
end

end

puts modern_roman_numeral 4
puts modern_roman_numeral 14
puts modern_roman_numeral 19
puts modern_roman_numeral 51
puts modern_roman_numeral 1287
