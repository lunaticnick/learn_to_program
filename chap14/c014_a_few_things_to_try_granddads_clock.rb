def chimes &block
  hour_now = Time.new.hour


# What if it is midnight
    if hour_now == 0
      hour_now = 12
    end

# What if its after midday
    if hour_now > 12
      hour_now = hour_now - 12
    end

# How many times do we call the block
  hour_now.times do
    block.call
  end

end # def chimes &block END


# ------------------------------------------
# ---------- END OF METHOD SECTION --------
# ------------------------------------------



chimes do
  puts 'DONG!'
end
