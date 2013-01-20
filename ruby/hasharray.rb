a = [1, 2, 3]

#arraytohash
Hash[*a.collect {|x| [a.index(x), x]}.flatten] 

#iterate the Hash
hash = Hash['fir', 123, 'sec', 'sec content']
hash.each {|key, value| puts 'keys:', key, 'values:', value}
hash.keys {puts}
hash.values {puts}