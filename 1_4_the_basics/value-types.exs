#
# Value types
#
# 1. Regex
rgx = Regex.run ~r{[aeiou]}, "caterpillar"
rgx = Regex.scan ~r{[aeiou]}, "caterpillar"
rgx = Regex.split ~r{[aeiou]}, "caterpillar"
rgx = Regex.replace ~r{[aeiou]}, "caterpillar", "*"

# Collection Types
# 1. Tuples
{status, count, action} = {:ok, 42, "next"}
# - Open Files
{:ok, file} = File.open("file.exs")

# 2. List
# - concat
list = [1,2,3] ++ [4,5,6]
# - diff
list = [1,2,3] ++ [4,5,6]
# - member
is_member = 1 in [1,2,3] # > true
is_member = "other_thing" in [1,2,3] # > false

# 2.1 Keyword Lists
keyword_list = [{:name, "dave"}, {:city, "dallas"}]

# We can also leave off the brackets if a keyword list appears as the last item
# in any context where a list of values is expected.
#   iex> [1, fred: 1, dave: 2]
#   > [1, {:fred, 1}, {:dave, 2}]
#   iex> {1, fred: 1, dave: 2}
#   > {1, [fred: 1, dave: 2]}

# 3. Maps
states = %{ "AL" => "Alabama", "WI" => "Wisconsin" }
responses = %{ { :error, :enoent } => :fatal, { :error, :busy } => :retry }
colors = %{ :red => 0xff0000, :green => 0x00ff00, :blue => 0x0000ff }
# Although typically all the keys in a map are the same type, that isn’t required.
mixed_keys = %{ "one" => 1, :two => 2, {1,1,1} => 3 }
# If the key is an atom, you can use the same shortcut that you use with keyword lists
colors = %{ red: 0xff0000, green: 0x00ff00, blue: 0x0000ff }
# You can use expressions for the keys in map literals
name = "John Doe"
name_down_case = %{String.downcase(name) => name}

# 3.1 Accessing a Map
states = %{ "AL" => "Alabama", "WI" => "Wisconsin" }
states["Al"]
# if keys are atoms, you can:
colors = %{ :red => 0xff0000, :green => 0x00ff00, :blue => 0x0000ff }
colors.red

# 4. Binaries
bin = <<1,2>>
byte_size(bin)

# 5. Dates and Times
dt = Date.new(2020, 4, 12)
dt2 = ~D[2020-4-18]

Date.day_of_week(dt)
