require 'test/unit'
class  ShapeTest < Test::Unit::TestCase
  def test_area
     rect =  Rectangle.new(6,4)
    assert_equal 24, rect.area
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


