class Triangle
  # write code here
  attr_accessor :a_side, :b_side, :c_side, :type

  def initialize(a_side:,b_side:,c_side:)
    @a_side = a_side
    @b_side = b_side
    @c_side = c_side
  end

  class TriangleError < StandardError

  end
end
