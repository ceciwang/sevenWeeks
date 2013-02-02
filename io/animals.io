Object ancestors := method(
  prototype := self proto
  if(prototype != Object,
  writeln("Slots of", prototype type,"\n-------------")
  prototype slotNames foreach(slotName, writeln(slotName))
  writeln
  prototype ancestors))

"something" println
Animal := Object clone
Animal speak := method(
  "animal" println)
Duck := Animal clone
Duck speak := method("quack" println)
Duck walk := method("waddle" println)

disco := Duck clone
disco ancestors

