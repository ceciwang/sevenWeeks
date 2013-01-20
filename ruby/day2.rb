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
