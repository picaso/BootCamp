require 'test/unit'

require File.expand_path(File.dirname(__FILE__) + '/chance')

class ChanceTest < Test::Unit::TestCase
  def test_probability_you_get_a_head_when_you_flip_a_coin
    
     
     assert_equal 50, Chance.new(50).get_chance_happening
  end
  def test_probability_you_do_not_get_a_head_when_you_flip_a_coin
  
     
     assert Chance.new(50) == Chance.new(50).not
  end
  
  def test_probability_you_get_a_3_when_you_roll_a_dice
    
     
     assert_equal 16.67, Chance.new(16.67).get_chance_happening
  end
  
  
  def test_probability_you_do_not_get_a_3_when_you_roll_a_dice
    
     
     assert Chance.new(100-16.67) == Chance.new(16.67).not
  end
  
  def test_equivelency
    assert  Chance.new(16.67) == Chance.new(16.67)
  end
  
  def test_for_nil
    
     assert_not_equal  Chance.new(16.67), nil

  end


  def test_or
    assert_equal Chance.new(10), Chance.new(5).or_(Chance.new(5))
  end

  def test_and
           assert_equal Chance.new(25), Chance.new(5).and_(Chance.new(5))
  end

  def test_xor

    assert_equal Chance.new(0.8125), Chance.new(0.25).xor(Chance.new(0.75))
  end

  def test_plus
    assert_equal Chance.new(0.2), Chance.new(0.1) + Chance.new(0.1)
  end

  def test_multiply
    assert_equal Chance.new(0.25), Chance.new(0.5)*Chance.new(0.5)
  end

  def test_minus
    assert_equal Chance.new(0.5), Chance.new(1)-Chance.new(0.5)
  end

  
end