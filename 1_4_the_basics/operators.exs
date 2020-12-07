#
# Operators
#
# 1 Comparisson
a === b # strict equality (so 1 === 1.0 is false)
a !== b # strict inequality (so 1 !== 1.0 is true)
a == b # value equality (so 1 == 1.0 is true)
a != b # value inequality (so 1 != 1.0 is false)
a > b # normal comparison
a >= b # :
a < b # :
a <= b # :

# 2 Boolean
a or b # true if a is true; otherwise b
a and b # false if a is false; otherwise b
not a # false if a is true; true otherwise

# 2.1 Relaxed Boolean operators
a || b # a if a is truthy; otherwise b
a && b # b if a is truthy; otherwise a
!a # false if a is truthy; otherwise true

# 3 Arithmetic operators
+ - * / div rem

# 4 Join operators
binary1 <> binary2 # concatenates two binaries (Later we'll
# see that binaries include strings.)
list1 ++ list2 # concatenates two lists
list1 -- list2 # removes elements of list 2 from a copy of list 1

# 5 THE IN OPERATOR
a in enum # tests if a is included in enum (for example,
          # a list, a range, or a map). For maps, a should
          # be a {key, value} tuple.
