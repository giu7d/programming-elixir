#
# Defining Anonymous Functions
#
sun = fn (a, b) -> a + b end  # declare
IO.puts sun.(1,2) # call (use . for anonimous func!)

say_hello = fn -> IO.puts "Hello!" end
say_hello.()
