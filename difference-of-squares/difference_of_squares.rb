# Find the difference between the square of the sum 
# and the sum of the squares of the first N natural numbers

class Squares

  attr_reader :square_of_sum, :sum_of_squares, :difference

  def initialize(number)
    series = (1..number)
    @square_of_sum = series.sum**2
    @sum_of_squares = series.map{ |n| n**2 }.sum
    @difference = @square_of_sum - @sum_of_squares
  end

end