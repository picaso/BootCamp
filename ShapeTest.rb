require 'test/unit'

class  SquareTest < Test::Unit::TestCase
  def test_square_area
     square = Square.new(6)
     
     assert_equal 36,square.area
  end
end

class RectangleTest < Test::Unit::TestCase
  def test_rectangle_area
    rectangle =  Rectangle.new(6,4)
    
    assert_equal 24, rectangle.area
  end
end

class Rectangle  
  def initialize(length, width)
     @length = length
     @width = width
  end
  
  def area
     @length * @width
  end
end


class Square < Rectangle
  
  def initialize(side)
     super(side, side)
  end

    
end

