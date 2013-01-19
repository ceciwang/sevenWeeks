puts "Let's guess the random number:"
random = rand(10)

while (guess=gets().to_i) != random
	puts "smaller" if guess < random
	puts "bigger" if guess > random 
end