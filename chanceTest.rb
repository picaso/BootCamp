require 'test/unit'
require 'chance'
class  ChanceTest < Test::Unit::TestCase
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
  
end