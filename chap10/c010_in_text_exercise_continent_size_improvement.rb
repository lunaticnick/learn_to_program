M = 'land'
o = 'water'
world = [[o,o,o,o,o,o,o,o,o,o,o],
         [o,o,o,o,M,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,M,M,o],
         [o,o,o,M,o,o,o,o,o,M,o],
         [o,o,o,M,o,M,M,o,o,o,o],
         [o,o,o,o,M,M,M,M,o,o,o],
         [o,o,o,M,M,M,M,M,M,M,o],
         [o,o,o,M,M,o,M,M,M,o,o],
         [o,o,o,o,o,o,M,M,o,o,o],
         [o,M,o,o,o,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,o,o,o]]

# ------------------------------------------
# ---------- END OF GIVENS SECTION ---------
# ------------------------------------------


def continent_size world, x, y
# What if the x,y are outside the array grid
  if x < 0 or x > 10 or y < 0 or y > 10
    return "Outside of Grid"
  end
# What if the given coordinated are NOT land or we have already counted it (counted land)
  if world[y][x] != 'land'
    return 0
  end
# So first we count this tile...
  size = 1
  world[y][x] = 'counted land'
# ...then we count all of the neighboring eight tiles
# (and, of course, their neighbors by way of the recursion).
  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x , y-1)
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y )
  size = size + continent_size(world, x+1, y )
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x , y+1)
  size = size + continent_size(world, x+1, y+1)
  size
end



# ------------------------------------------
# ---------- END OF METHODS SECTION --------
# ------------------------------------------


puts continent_size(world, 5, 5)
puts continent_size(world, 20, 20)
