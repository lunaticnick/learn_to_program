# ------ Add Shuffle to Class Array ----------

class Array

  def shuffle
    array = self #This ensures that the method runs to the instance of the Class
    shuffle_array = []
    while array.length > 0
      # Randomly pick one element of the array.
      rand_index = rand(array.length)
      # Now go through each item in the array, putting them all into new_arr
      # except for the randomly chosen one, which goes into shuffle_ray.
      curr_index = 0
      new_array = []
      array.each do |item|
        if curr_index == rand_index
                shuffle_array.push item
        else
                  new_array.push item
        end
            curr_index +=  1
      end

      # Replace the original array with the new, smaller array.
      array = new_array
    end
    shuffle_array
  end

end

puts "The result of the shuffle is:"
puts [1,2,3,4,5,6,7,8].shuffle
puts

# ------ Add Shuffle to Class Array END ----------

# ------ Add Factorial & Roman Integers methods to Class Integer ----------

class Integer


  def factorial

    if self < 0
      return 'You can\'t take the factorial of a negative number!'
    end

    if self <= 1
        1
      else
        self * (self-1).factorial
    end

  end # def factorial END

# ------ Add Factorial method to Class Integer END ----------

  def modern_roman_numeral
    thous = (self / 1000)
    hundr = (self%1000/100)
    tens  = (self%100/10)
    sing  = (self%10)

   roman_num = "M"* thous

   if hundr == 9
       roman_num = roman_num + "CM"
     elsif hundr == 4
       roman_num = roman_num + "CD"
     else
       roman_num = roman_num + "D"*(self%1000/500)
       roman_num = roman_num + "C"*(self%500/100)
   end

  if tens == 9
      roman_num = roman_num + "XC"
    elsif tens == 4
      roman_num = roman_num + "XL"
    else
      roman_num = roman_num + "L"*(self%100/50)
      roman_num = roman_num + "X"*(self%50/10)
  end

  if sing == 9
      roman_num = roman_num + "IX"
    elsif sing == 4
      roman_num = roman_num + "IV"
    else
      roman_num = roman_num + "V"*(self%10/5)
      roman_num = roman_num + "I"*(self%5)
    end

  end # def modern_roman_numeral END

end  # class Integer END

# ------ Add Factorial & Roman Integers methods to Class Integer END ----------

puts "The result of the factorial is:"
puts  3.factorial
puts

puts "The result of the integer to roman is:"
puts 4.modern_roman_numeral
puts 15.modern_roman_numeral
puts 19.modern_roman_numeral
