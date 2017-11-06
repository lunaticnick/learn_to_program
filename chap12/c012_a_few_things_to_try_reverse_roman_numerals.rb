def roman_to_integer roman
  digit_vals = {'i' => 1, 'v' => 5, 'x' => 10, 'l' => 50, 'c' => 100,
                'd' => 500, 'm' => 1000}

# Give an initial value to the number that the method will return after
# completing
total = 0

# Assign an initial value for the test variable used for special cases
prev = 0

# Get the required index for the digit to be processed
index = roman.length - 1

while index >= 0
    # Get the roman number that is equivalent to the index [moving R -> L]
    c = roman[index].downcase
    # Set the index to the next number [moving R -> L]
    index = index - 1
    # Convert the roman letter to an arabic number
    val = digit_vals[c]

    # if the roman letter is not a valid one, give an error
    if !val
          puts 'This is not a valid roman numeral!'
    return
    end

    # Handling special cases (i.e. IV , XI, etc)
    if val < prev # e.g
      val = val * -1
     else
      prev = val
      end

    # Recalculating total for each step of while
    total = total + val

 end # end of while index>=0

  # What the method returns
  total

end # end of method roman_to_integer



# ------------------------------------------
# ---------- END OF METHODS SECTION --------
# ------------------------------------------


puts(roman_to_integer('mcmxcix'))
puts(roman_to_integer('CCCLXV'))
puts(roman_to_integer('viii'))
