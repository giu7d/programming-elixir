#
# One Function, Multiple Bodies
#
handle_open = fn
  {:ok, file} -> "Read data: #{IO.read(file, :line)}"
  {_, error} -> "Error: #{:file.format_error(error)}"
end

IO.puts handle_open.(File.open(".editorconfig"))
IO.puts handle_open.(File.open("asd"))

# Ex.2
fizz_buzz = fn
  (0, 0, _) -> "FizzBuzz."
  (0, _, _) -> "Fizz."
  (_, 0, _) -> "Buzz."
  (_, _, c) -> c
end

IO.puts fizz_buzz.(0,0,0)
IO.puts fizz_buzz.(0,0,1)
IO.puts fizz_buzz.(0,1,0)
IO.puts fizz_buzz.(0,1,1)
IO.puts fizz_buzz.(1,0,0)
IO.puts fizz_buzz.(1,0,1)
IO.puts fizz_buzz.(1,1,0)
IO.puts fizz_buzz.(1,1,1)

# Ex.3
handle_fizz_buzz = fn (n) -> fizz_buzz.(rem(n, 3), rem(n, 5), n) end

IO.puts handle_fizz_buzz.(10)
IO.puts handle_fizz_buzz.(11)
IO.puts handle_fizz_buzz.(12)
IO.puts handle_fizz_buzz.(13)
IO.puts handle_fizz_buzz.(14)
IO.puts handle_fizz_buzz.(15)
