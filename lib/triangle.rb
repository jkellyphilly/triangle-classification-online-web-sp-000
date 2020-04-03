class Triangle

  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if [side_1, side_2, side_3].any?(|side| side <= 0)
      raise TriangleError
  end

  class TriangleError < StandardError
    def message
      "Not a valid type of trinagle."
    end
  end
end
