require "test/unit"
require File.expand_path(File.dirname(__FILE__) + '/quantity')


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

  def test_convert_to_teaspoon
    assert_equal Quantity.new(1, :tbsp), Quantity.new(3, :tsp)
  end

  def test_convert_to_tablespoon
    assert_equal Quantity.new(1, :oz), Quantity.new(2, :tbsp)
  end

  def test_convert_to_cup
    assert_equal Quantity.new(1, :cup), Quantity.new(8, :oz)
  end


  def test_convert_length_to_quantity_throws_exception
    assert_raise RuntimeError do
      assert_equal Quantity.new(1, :in), Quantity.new(1, :tsp)
    end
  end
end