require 'test/unit'
class Chance
  def initialize(value)
    @occurance = value
    @no_occurance = 100-value
    
    
  end
  
  def get_chance_happening
    
    ans = @occurance
    return ans
  end
  def get_chance_not_happening

    ans = @no_occurance
    return ans
   end
  
  
end


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