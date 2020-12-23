# Module Attributes
defmodule ModuleAttributes do
  @author "Dave Thomas"
  def get_author do
      @author
  end
end

IO.puts "Example was written by #{ModuleAttributes.get_author}"

defmodule ModuleAttributes2 do
  @attr "one"
  def first, do: @attr

  @attr "two"
  def second, do: @attr
end

IO.puts "#{ModuleAttributes2.second} #{ModuleAttributes2.first}"
# These attributes are not variables in the conventional sense. Use them for
# configuration and metadata only. (Many Elixir programmers employ them
# where Java or Ruby programmers might use constants.)
