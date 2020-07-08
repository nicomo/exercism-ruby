# Determine if a triangle is equilateral, isosceles, or scalene

class Triangle
  
  def initialize(triangle)
    @triangle = triangle
  end
    
  def equilateral?
    uniq_sides == 1 && @triangle.max() != 0
  end 

  def isosceles?
    uniq_sides <= 2 && is_triangle
  end

  def scalene?
    uniq_sides == 3 && is_triangle
  end

  def uniq_sides
    @triangle.uniq.length
  end

  def is_triangle
    @triangle.min(2).sum >= @triangle.max()
  end

end