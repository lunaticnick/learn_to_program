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

# Using the shuffle method from Chapter 10 to create the list of songs

all_mp3 = shuffle(Dir['**/*.mp3'])

# Write the shuffle list in a m3u file, so that music players can read/load it.

File.open 'playlist.m3u', 'w' do |f|
  all_mp3.each do |mp3|
    f.write mp3+"\n"
  end
end
puts 'Done!'
