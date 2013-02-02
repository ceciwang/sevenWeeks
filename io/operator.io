orig := Number getSlot("/")

Number / := method(parm,
  target := call target 
  if(parm != 0, target orig(parm), 0 )
)

//OperatorTable addOperator("/", 2)

(2/3) println
(2/0) println
(4/ -2) println

