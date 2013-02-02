def math(a,b)
  yield (a,b)
end

def teach_math (a,b,&operation)
  puts "let's do math"
  puts math(a,b,&operation)
end

teach_math(2,3) {|x,y| x*y}
