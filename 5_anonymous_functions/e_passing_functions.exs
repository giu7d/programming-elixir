#
# Passing Functions as Arguments
#
times_2 = fn n -> n * 2 end
apply = fn (fun, value) -> fun.(value) end
IO.puts apply.(times_2, 6)

IO.inspect Enum.map [1,3,5], fn el -> el * 2 end
