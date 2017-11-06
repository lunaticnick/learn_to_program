class OrangeTree

  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
    puts "You have planted an orange tree"
  end # def initialize END

# ------------------

  def height
    if @alive
      @height
    else
      "The tree was dead, so they had to cut it down for wood"
    end # if @alive END
  end # def height END

# ------------------

  def count_the_oranges
    if @alive
      @orange_count
    else
      "The tree is dead so there are no oranges"
    end # if @alive END
  end # def count_the_oranges END

# ------------------

  def one_year_passes
    if @alive
      # We assume that the tree grows linearly. If we dont wan't to make this
      # assumption comment line 35 and uncomment line 36.
      @height = @height + 0.5
      # @height = (@height + rand(0.4..0.9)).round(2)
      @orange_count = 0 # Every year the oranges fall off

        if @height > (10 + rand(2..5)) # Trees do not die at a specific age
            @alive = false
            'Oh, no! The tree is too old, and has died. :('
          elsif @height > 2 # Trees produce fruit after a certain age
            @orange_count = (@height * (10 + rand(5..30))).to_i
            "The tree grew to #{@height} meters tall and produced #{@orange_count} oranges"
          else # Tree too young to have fruits
            "The tree is now #{@height} meters tall, but it's too young to bear fruits"
        end # if @height > END

      else

        'A year later, the tree is still dead. :('
    end # if @alive END

  end # def one_year_passes END

# ------------------

    def pick_an_orange
      if @alive
        if @orange_count > 0
          @orange_count = @orange_count -1
            "This orange was delicious"
          else
            "No oranges on the tree, you have to wait for a year"
          end # if orange_count END
      else
         "The tree is dead so there are no oranges to pick"
      end
    end # def pick_an_orange end

# ------------------

end # class OrangeTree END

# ------------------------------------------
# ---------- END OF CLASS SECTION --------
# ------------------------------------------

ot = OrangeTree.new
puts
puts "Tell me how many years have passed since you planted the orange tree?"
y = gets.chomp.to_i

puts
puts
n = 1
y.times do

    ot.one_year_passes

    #If you want to see a year-by-year comment, please uncomment line 91 -95
    # puts "After #{n} year"
    # puts ot.one_year_passes
    # puts(ot.pick_an_orange)
    # n=n+1
    # puts " ------- "

end
n = y+1
puts puts "On the #{n}st year, the following have changed:"
puts(ot.one_year_passes)
puts "I tried picking up an orange. " + (ot.pick_an_orange)
puts " ------- "
puts
n=n+1
puts puts "On the #{n}st year, the following have changed:"
puts(ot.one_year_passes)
puts "I tried picking up an orange. " + (ot.pick_an_orange)
puts " ------- "
puts
puts puts "On the #{n}st year, the following have changed:"
puts(ot.one_year_passes)
puts "I tried picking up an orange. " + (ot.pick_an_orange)
puts " ------- "
puts
