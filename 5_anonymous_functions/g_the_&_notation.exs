#
# The & Notation
#
# Ex.5
# a.
IO.inspect Enum.map [1,2,3,4], &(&1 + 2)
# b.
Enum.map [1,2,3,4], &(IO.inspect &1)
