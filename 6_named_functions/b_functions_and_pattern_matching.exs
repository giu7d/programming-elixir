#
# Function Calls and Pattern Matching
#
defmodule Factorial do
  def of(0) do
    1
  end
  def of(n) do
    n * of(n-1)
  end
end

IO.inspect Factorial.of(10)
# OBS:  the order of these clauses can make a difference
#       when you translate them into code. Elixir tries functions from the top down,
#       executing the first match.

# Ex
defmodule Soma do
  def of(1) do
    1
  end
  def of(n) do
    n + of(n-1)
  end
end

IO.inspect Soma.of(5)
