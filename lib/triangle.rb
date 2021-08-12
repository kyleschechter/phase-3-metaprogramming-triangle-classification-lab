class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize side1, side2, side3
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    triangle_error
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    else
      :scalene
    end
  end

  def triangle_error
    raise TriangleError unless  @side1 + @side2 > @side3 && @side1 + @side3 > @side2 && @side2 + @side3 > @side1 && [@side1, @side2, @side3].all? {|s| s > 0}
  end

  class TriangleError < StandardError
  end
end
