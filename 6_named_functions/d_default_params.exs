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

# Ex.6
defmodule Chop do
  def guess(actual, lo..hi) when lo <= hi and actual in lo..hi do
    current = guessing(lo, hi)
    IO.puts "Is it #{current}"
    guess(current, actual, lo..hi)
  end

  defp guess(value, actual, _) when value == actual, do: IO.puts value

  defp guess(value, actual, lo.._) when actual < value, do: guess actual, lo..(value - 1)

  defp guess(value, actual, _..hi) when actual > value, do: guess actual, (value + 1)..hi

  defp guessing(lo, hi) do
    lo + div(hi - lo, 2)
  end

end

Chop.guess(273,1..1000)
