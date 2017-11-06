$nesting_depth = 0

# ------------------------------------------
# ---------- END OF GLOBAL VARIABLES -------
# ------------------------------------------


def log description, &block
  indent = "           "*$nesting_depth
  puts indent + "Beginning to compute \"#{description}\" ..."
  puts
  $nesting_depth = $nesting_depth + 1
  result = block.call
  $nesting_depth = $nesting_depth - 1
  puts indent + "\"#{description}\" has finished computing, and returns:"
  puts indent + result.to_s
  puts
  end

# ------------------------------------------
# ---------- END OF METHOD SECTION --------
# ------------------------------------------


log "Level 1" do
  log "Level 2" do
      3+2
      log "Level 3" do
        25*2
      end
  end

  log "Level 2 - second occurance" do
    "I love Thai food!"
  end

  "This is a program logger"
end
