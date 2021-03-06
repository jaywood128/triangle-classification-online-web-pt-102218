require 'pry'
class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if (a == b) && (b==c) && (c==a)
      :equilateral
    elsif (a == b) || (b==c) || (c==a)
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    real = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each { |s| real << false if s <= 0 }
    raise TriangleError if real.include?(false)
  end

  class TriangleError < StandardError
  end

end
