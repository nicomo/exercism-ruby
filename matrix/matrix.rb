# Given a string representing a matrix of numbers, 
# return the rows and columns of that matrix

class Matrix

    attr_reader :rows, :columns

    def initialize(input)
      @rows = input.split(/\n+/).map do
        |row| 
        row.scan(/\w+/).map{ |i| i.to_i }
      end
      @columns = rows.transpose
    end

end