puts "Let's guess the random number:"
random = rand(10)
guess = gets().to_i
puts "bigger" if guess > random
puts "smaller" if guess < random
puts "success" if guess  == random