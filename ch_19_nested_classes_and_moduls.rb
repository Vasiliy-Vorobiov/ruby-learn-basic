class Vector
  attr_reader :point_1, :point_2

  def initialize(point_1:, point_2:)
    @point_1 = point_1
    @point_2 = point_2
    @dist = distance
  end

  def distance
    Math.sqrt((@point_1.x-@point_2.x)**2 + (@point_1.y-@point_2.y)**2)
  end

  class Point
    attr_reader :x, :y

    def initialize(x, y)
      @x = x
      @y = y
    end
  end
end

p1 = Vector::Point.new(1, 1)
p2 = Vector::Point.new(4, 5)

vec = Vector.new(point_1: p1, point_2: p2)
p vec.distance