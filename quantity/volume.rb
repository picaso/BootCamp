class Volume

  attr_reader :conversion_factor

  def initialize (conversion_factor)
    @conversion_factor = conversion_factor
  end


  def self.tsp
    Volume.new(1)
  end

  def self.tbsp
    Volume.new(3)
  end

  def self.oz
    Volume.new(6)
  end

  def self.cup
    Volume.new(48)
  end

end