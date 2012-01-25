require "test/unit"
require "quantity"

class QuantityTest < Test::Unit::TestCase
  def test_convert_to_inches
    assert_equal Quantity.new(12, :in), Quantity.new(1, :ft)
  end

  def test_convert_to_yard
    assert_equal Quantity.new(3, :ft), Quantity.new(1, :yd)
  end

  def test_convert_to_mile
    assert_equal Quantity.new(1760, :yd), Quantity.new(1, :ml)
  end
end