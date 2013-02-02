my_var = "Success"

MyClass = Class.new do
  puts "#{my_var} in the class"
  define_method :my_method do
    puts "#{my_var} in method"
  end
end
MyClass.new.my_method
