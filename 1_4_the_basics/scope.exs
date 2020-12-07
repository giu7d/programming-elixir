#
# Variable Scope
#
# 1. Do Block
line = 50

if (line == 50) do
  IO.puts "new-page\f"
  line = 0
end

IO.puts line

# 2. With
content = "Now is the time"
lp  = with  {:ok, file} = File.open("file"),
            content = IO.read(file, :all), # note: same name as above
            :ok = File.close(file),
            rgx = Regex.run(~r/^lp:.*?:(\d+):(\d+)/m, content)
      do
        IO.puts content #=> File content
        "Group: #{rgx}"
      end
IO.puts lp #=> Group: 26, User: 26
IO.puts content #=> Now is the time
# IMPORTANT> The content is bound to the scope!!

# 2.1 With + Patter Matching
# The <- is just like the = operator but if it fails it returns the value that couldn’t be matched.
arrow_op = with [a|_] <- [1,2,3], do: a

result  = with  {:ok, file} = File.open("file"),
                content = IO.read(file, :all),
                :ok = File.close(file),
                [_, uid, gid] <- Regex.run(~r/^xxx:.*?:(\d+):(\d+)/, content)
          do
            "Group: #{gid}, User: #{uid}"
          end

IO.puts inspect(result)
