# Given a string of digits, output all the contiguous substrings 
# of length `n` in that string in the order that they appear.

class Series
  def initialize(input)
    @series = input.chars
  end

  def slices(i)
    raise ArgumentError, 'Argument is too big' unless i <= @series.length()  
    res = []
    @series.each_cons(i) { |c| res.append(c.join()) }
    res
  end


end
