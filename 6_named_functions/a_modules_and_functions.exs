#
# Modules and Named Functions
#
defmodule Times do
  def double(n) do
    n * 2
  end
  def triple(n) do
    n * 3
  end
  def quadruple(n) do
    double(double(n))
  end
end

IO.inspect Times.double(2)
IO.inspect Times.triple(2)
IO.inspect Times.quadruple(2)
