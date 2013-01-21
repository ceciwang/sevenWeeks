File.open('grepfile','r').lines.each {|line| puts line if line.include?("Ruby")}

def grep(condition)
	File.open('grepfile', 'r').lines.each {
		|line| puts line if /#{condition}/.match(line)
	}
end

puts "***********"
grep("Ruby")

search_string = ARGV.shift
ARGF.each_with_index{|line, index|
	if(/#{search_string}/.match(line))
		puts "#{index}: #{line}"
	end
}