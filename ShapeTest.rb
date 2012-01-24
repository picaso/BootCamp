require 'test/unit'
class  ShapeTest < Test::Unit::TestCase
  def test_area
     rect =  Rectangle.new(6,4)
    
    assert_equal 24, rect.area
  end
  
  def test_square_has_equal_sides
     square = Square.new(6,6)
     assert_equal square.length, square.width
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


class Square
  attr_reader :length, :width
  
  def initialize(length, width)
     @length = length
     @width = width
  end
  def area
     @length * @width
  end
    
end

