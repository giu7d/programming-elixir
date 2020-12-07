#
# Guard Clauses
#
defmodule Guard do
  def what_is(x) when is_number(x) do
    "#{x} is a number"
  end
  def what_is(x) when is_list(x) do
    "#{inspect(x)} is a list"
  end
  def what_is(x) when is_atom(x) do
    "#{x} is an atom"
  end
end

IO.inspect Guard.what_is(99)
IO.inspect Guard.what_is(:cat)
IO.inspect Guard.what_is([1,2,3])

# OBS:  In the last factorial module, if we were to pass it a negative number,
#       it would loop forever. In this case it won't

defmodule Factorial do
  def of(0) do
    1
  end
  def of(n) when is_integer(n) and n > 0 do
    n * of(n-1)
  end
end

IO.inspect Factorial.of(10)
