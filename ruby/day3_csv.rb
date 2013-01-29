module ActsAsCsv
	def self.included(base)
		base.extend ClassMethods
	end

	module ClassMethods
		def acts_as_csv
			include InstanceMethods
		end
	end

	module InstanceMethods
		def read
			@csv_contents = []
			@rows = []
			file = File.new(self.class.to_s.downcase + '.txt')
			@headers = file.gets.chomp.split(', ')
			CsvRow.headers = @headers

			file.each do |row|
				@rows << CsvRow.new(row)
				@csv_contents << row.chomp.split(', ') 
			end
		end

		attr_accessor :csv_contents, :headers, :rows

		def initialize
			read
		end
	end
end


module ActsAsCsvRow
	module InstanceMethods
		def each &block

		end

		def initialize
		end
	end
end


class RubyCsv
	include ActsAsCsv
	acts_as_csv
end

class CsvRow
	attr_accessor :row_content

	def initialize row
		@row_content = row
	end

	def method_missing name, *args
		row_content.name
	end
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect

# m.each {|row| puts row.tt1 }
