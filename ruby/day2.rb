#not using block

f= File.open('readfile')
while line=f.gets
	puts line
end

#using block
f=File.open('readfile')
f.each do |line|
	puts line
end

#print every 4 numbers in array
array = (1..16).to_a
array.each do |number|
	if number%4 == 0
		print "#{number}\n"
	else
		print "#{number}  "
	end
end

#print using each_slice
array = Array.new(16) { |x| x }
array.each_slice(4) {|x| p x}