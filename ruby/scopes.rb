v1 = 1
  puts local_variables, "out"
class MyClass
  v2 = 2
    puts local_variables, "class first"

  def my_method
    v3 = 3
      puts local_variables, "method"
  end

   puts local_variables, "class sec"
end

obj = MyClass.new

puts "#"
obj.my_method

puts "#"
obj.my_method
puts "#"
