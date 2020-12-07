#
# Functions Can Return Functions
#
fun_fun = fn ->
            fn ->
              "Hello"
            end
          end

IO.puts fun_fun.().()


add_n = fn n -> (fn other -> n + other end) end
add_two = add_n.(2)
add_five = add_n.(5)

IO.puts add_two.(3)
IO.puts add_five.(7)

# Ex.4

prefix = fn pre -> (fn rest -> "#{pre} #{rest}" end) end

mrs = prefix.("Mrs")

IO.puts mrs.("Smith")
IO.puts prefix.("Elixir").("Rocks")
