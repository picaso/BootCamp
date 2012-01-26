require 'test/unit'
require File.expand_path(File.dirname(__FILE__) + '/square')
require File.expand_path(File.dirname(__FILE__) + '/rectangle')


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


