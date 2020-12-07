#
# Default Parameters
#
defmodule DefaultParams do
  def of(p1, p2 \\ 2, p3 \\ 3, p4) do
    [p1, p2, p3, p4]
  end
end

IO.inspect DefaultParams.of("a", "b")
IO.inspect DefaultParams.of("a", "b", "c")
IO.inspect DefaultParams.of("a", "b", "c", "d")
