#to get the spinner in the console
def show_wait_cursor(seconds,fps=10)
  chars = %w[| / - \\]
  delay = 1.0/fps
  (seconds*fps).round.times{ |i|
    print chars[i % chars.length] 
    sleep delay
    print "\b"
  }
end
show_wait_cursor(3) 
