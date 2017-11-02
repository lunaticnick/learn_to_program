def shuffle array
  shuffle_array = []
  while array.length > 0
    # Randomly pick one element of the array.
    rand_index = rand(array.length)
    # Now go through each item in the array,
    # putting them all into new_arr except for the # randomly chosen one, which goes into shuffle_ray.
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

    # Replace the original array with the new, # smaller array.
    array = new_array
  end
  shuffle_array
end


# ------------------------------------------
# ---------- END OF METHODS SECTION --------
# ------------------------------------------

puts(shuffle([1,2,3,4,5,6,7,8,9]))
