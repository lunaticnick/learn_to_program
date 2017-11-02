def sort my_array
  recursive_sort my_array, []
end


def recursive_sort unsorted_array, sorted_array
  # If the "unsorted_array" helping array is empty
  if unsorted_array.length <=0
    return sorted_array
  end

# Get the last word from unsorted_array
  last_word = unsorted_array.pop
  remain_unsorted =[]
  unsorted_array.each do |test_word|
    if test_word < last_word
      remain_unsorted.push last_word
      last_word = test_word
    else
      remain_unsorted.push test_word
    end
  end

  sorted_array.push last_word
  recursive_sort remain_unsorted, sorted_array

end


# ------------------------------------------
# ---------- END OF METHODS SECTION --------
# ------------------------------------------



puts "Give me the words you want to add to the array"
puts "(When you have given all the words you want, just press Enter)"
puts
array = []
word=" "
# Investigate how the empty ENTER is not incorporated into the array
while word !=""
  word =gets.chomp
  array.push(word)
end


puts

puts "Your sorted array is the following:"
puts sort array
