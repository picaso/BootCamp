class Chance
  def initialize(value)
    @occurance = value
    @no_occurance = 100-value
    
    
  end
  
  def get_chance_happening
    
     @occurance
    
  end
  
  def ==(value)
    if (value.class != Chance )
      return false
    else  
      get_chance_happening == value.get_chance_happening
    end
    
    
  end
  
  def not

   Chance.new(@no_occurance)
    
   end
  
  
end

