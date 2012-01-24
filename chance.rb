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

