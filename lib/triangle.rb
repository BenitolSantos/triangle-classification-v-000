class Triangle
  # write code here
  attr_accessor :Aside, :Bside, :Cside

  def initialize(Aside:,Bside:,Cside:)
    @Aside = Aside:
  end

  class TriangleError < StandardError

  end
end
