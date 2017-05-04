require 'pry'
class Triangle
  attr_accessor :a, :b, :c
  attr_reader :kind

  def initialize(a, b, c)
    @a, @b, @c = a, b, c
  end

  def kind
    if !self.legal?
      raise TriangleError
    else
      if a == b && b == c
        :equilateral
      elsif (a == b && a != c) || (a == c && a != b) || (b == c && a != b)
        :isosceles
      else
        :scalene
      end
    end
  end

  def legal?
    a > 0 && b > 0 && c > 0 && a + b > c && a + c > b && b + c > a
  end
end

class TriangleError < StandardError

end
