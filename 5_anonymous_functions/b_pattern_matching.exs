#
# Functions and Pattern Matching
#
swap = fn { a, b } -> { b, a } end
swap.({ 1, 2 })

# Ex.1
# a.
list_concat = fn (a, b) -> a ++ b end
list_concat.([:a, :b], [:c, :d]) #=> [:a, :b, :c, :d]
# b.
sum = fn (a,b,c) -> a + b + c end
sum.(1, 2, 3) #=> 6
# c.
pair_tuple_to_list = fn {a, b} -> [a, b] end
pair_tuple_to_list.( { 1234, 5678 } ) #=> [ 1234, 5678 ]
