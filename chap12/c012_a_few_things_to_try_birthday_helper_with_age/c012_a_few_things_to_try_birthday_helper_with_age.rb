require 'time'

#  First, load in the birthdays file
bdays = File.read("birthdays_file.txt")

# Create an empty array where the info from bdays will be written
birth_dates = {}


# Extract all lines from array and process them
bdays.each_line do |line|
    line = line.chomp

    # Find the index of first comma, so we know where the name ends.
    first_comma = 0

    while line[first_comma] != ',' && first_comma < line.length
        first_comma = first_comma + 1
    end

    name = line[0..(first_comma - 1)]
    date = line[-12..-1]

    # Return the date of bday
    birth_dates[name] = date

  end

  #  Now ask the user which one they want to know.
  puts 'Whose birthday would you like to know?'
  name = gets.chomp
  date = birth_dates[name]
    if date == nil
      puts "Oooh, I don't know that one..."
    else

    #Calculate how old they are
      day = date[4..5]
      # puts day
      month_lett = date[0..2]
      # puts month
      year = date[-4..-1]
      # puts year

     old = ((Time.now - Time.gm(year,month_lett,day))/60/60/24/365).floor

    puts "So #{name}'s birtday is on " + date[0..12] + " and he would be #{old} years old today"
end
