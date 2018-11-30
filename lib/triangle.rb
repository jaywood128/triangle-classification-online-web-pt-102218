class Triangle

  attr_accessor :equilateral

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    binding.pry
    if ((a == b) && (b == c) && (c==a))
       self.kind == :equilateral

    end
  end

  class TriangleError < StandardError
  end
  # write code here
end
