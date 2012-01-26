require File.expand_path(File.dirname(__FILE__) + '/rectangle')
class Square < Rectangle
  
  def initialize(side)
     super(side, side)
  end

    
end