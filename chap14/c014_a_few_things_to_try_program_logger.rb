
def log description, &block
  puts "Beginng to compute \"#{description}\" ..."
  result = block.call
  puts ".... \" #{description}\" has finished computing, and returns:"
  puts result.to_s
  end

# ------------------------------------------
# ---------- END OF METHOD SECTION --------
# ------------------------------------------


log "outer block" do
  log "some little block" do
      3+2
  end

  log "yet another block" do
    "I love Thai food!"
  end

  "This is a program logger"
end
