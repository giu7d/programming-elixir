#
# Modules
#
# Module Definition
defmodule Mod do
  def func1 do
    IO.puts "in func1"
  end
  def func2 do
    func1()
    IO.puts "in func2"
  end
end

Mod.func1
Mod.func2

# Nested Modules
 defmodule OuterModule do
   defmodule InnerModule do
     def inner_func do
       IO.puts "in func1"
     end
   end
   def outer_func do
     IO.puts "in func2"
   end
 end

 OuterModule.outer_func
 OuterModule.InnerModule.inner_func

 # The Import Directive
defmodule ImportDirective do
  def func1 do
    List.flatten [1,[2,3],4]
  end
  def func2 do
    import List, only: [flatten: 1]
    flatten [5,[6,7],8]
  end
end

# The Alias Directive
defmodule AliasDirective do
  def compile_and_go do
    alias OuterModule, as: Parser
    alias OuterModule.InnerModule, as: Runner
    Parser.outer_func()
    Runner.inner_func()
  end
end

AliasDirective.compile_and_go()
