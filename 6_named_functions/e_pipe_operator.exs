#
# The Amazing Pipe Operator: |>
#

(1..10)
  |> Enum.map(&(&1*&1))
  |> Enum.filter(&(&1<40))
  |> IO.inspect

# OBS: Note that I had to use parentheses in that code—the & shortcut and the pipe
# operator fight otherwise
