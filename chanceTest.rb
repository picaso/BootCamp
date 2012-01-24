require 'test/unit'
require 'chance'
class  ChanceTest < Test::Unit::TestCase
  def test_probability_you_get_a_head_when_you_flip_a_coin
     coinChance = Chance.new(50)
     
     assert_equal 50, coinChance.get_chance_happening
  end
  def test_probability_you_do_not_get_a_head_when_you_flip_a_coin
     coinChance = Chance.new(50)
     
     assert_equal 50, coinChance.get_chance_not_happening
  end
  
  def test_probability_you_get_a_3_when_you_roll_a_dice
     coinChance = Chance.new(16.67)
     
     assert_equal 16.67, coinChance.get_chance_happening
  end
  
  
  def test_probability_you_do_not_get_a_3_when_you_roll_a_dice
     coinChance = Chance.new(16.67)
     
     assert_equal 100-16.67, coinChance.get_chance_not_happening
  end
end