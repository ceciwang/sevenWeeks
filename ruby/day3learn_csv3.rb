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
			file = File.new(self.class.to_s.downcase + '.txt')
			@headers = file.gets.chomp.split(', ')
      @csvrows = []

			file.each do |row|
        row_content = row.chomp.split(', ')
				@csv_contents << row_content 
        @csvrows << CsvRow.new(@headers, row_content)
			end
		end
    
    def each
      @csvrows.each {|row| yield}
    end

		attr_accessor :csv_contents, :headers

		def initialize
			read
		end
	end
end

class CsvRow
  def initialize(headers, row) 
    @row = {}
    headers.each_index do |i|
      head = headers[i]
      @row["#{head}"] = row[i]
      puts row
    end
  end
end

class RubyCsv
	include ActsAsCsv
	acts_as_csv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect
m.each {|row| puts row.one}
