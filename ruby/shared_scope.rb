def define_methods
  shared = 0
  Kernel.send :define_method, :counter do
    shared
  end
  Kernel.send :define_method, :inc do |x|
    shared += x
  end
end

define_methods
puts counter
inc(4)
puts counter

class SharedScope
  shared = 0
  define_method :counter do
    shared
  end

  define_method :inc do |x|
    shared += x
  end
end

obj = SharedScope.new
puts obj.counter
obj.inc(4)
puts obj.counter
