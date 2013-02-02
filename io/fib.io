Object fib := method(nth,
  first := 1
  second := 1

  if(nth < 3, return first)

  for(nth, 3, nth, 1,
    result := first + second
    first = second
    second = result
  )
  result 
)

fib(3) println
