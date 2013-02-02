2array := list(
  list(1, 2, 3),
  list(4, "some", 6),
  list(0, 1, 2)
)

List sum2dim := method(
  a := List clone
  self foreach(array, b := array sum; a append(b))
  a sum 
)

List deepSum := method(
  self flatten sum
)
List deepSumNums := method(
  flattened := self flatten
  result := 0
  flattened foreach( value, if(value type == "Number", result = value + result))
)
2array deepSumNums println
