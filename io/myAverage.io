List myAverage := method(
  self foreach(v, if(v type != "Number", Exception raise"not a number list"))
  if(self size == 0, return 0)
  (self sum) / (self size)
)

list(1, 2) myAverage println
list() myAverage println
list("1",3) myAverage println
