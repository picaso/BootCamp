require "test/unit"
require File.expand_path(File.dirname(__FILE__) + '/quantity')
require File.expand_path(File.dirname(__FILE__) + '/length')
require File.expand_path(File.dirname(__FILE__) + '/volume')


class QuantityTest < Test::Unit::TestCase
  def test_convert_to_inches
    assert_equal Quantity.new(12, Length.inches), Quantity.new(1, Length.foot)
  end

  def test_convert_to_yard
    assert_equal Quantity.new(3, Length.foot), Quantity.new(1, Length.yard)
  end

  def test_convert_to_mile
    assert_equal Quantity.new(1760, Length.yard), Quantity.new(1, Length.mile)
  end

  def test_convert_to_teaspoon
    assert_equal Quantity.new(1, Volume.tbsp), Quantity.new(3, Volume.tsp)
  end

  def test_convert_to_tablespoon
    assert_equal Quantity.new(1, Volume.oz), Quantity.new(2, Volume.tbsp)
  end

  def test_convert_to_cup
    assert_equal Quantity.new(1, Volume.cup), Quantity.new(8, Volume.oz)
  end


  def test_convert_length_to_quantity_throws_exception
    assert_raise RuntimeError do
      assert_equal Quantity.new(1, Volume.cup), Quantity.new(1, Length.yard)
    end
  end
end