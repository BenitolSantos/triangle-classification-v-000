class Triangle
  # write code here
  attr_accessor :a_side, :b_side, :c_side, :type

#mass assignment is when you have a method that takes a HASH or multiple hashes as an argument.
#so it has a value.
#its mass assignment if we are iterate over the various keys and values
#more notes in spec
  def initialize(a_side:,b_side:,c_side:)
    @a_side = a_side
    @b_side = b_side
    @c_side = c_side
  end

  #That's actually a valid way to call a method..
  #It's calling .kind on the return value of Triangle.new which is an object

  def kind
    @type = :equilateral if @a_side == @b_side && @b_side == @c_side
    @type = :isosceles if @a_side == @b_side && @b_side != @c_side
    @type = :isosceles if @a_side != @b_side && @a_side == @c_side
    @type = :isosceles if @a_side != @b_side && @b_side == @c_side
    @type = :scalene if @a_side != @b_side && @b_side != @c_side
  end

  class TriangleError < StandardError

  end
end
