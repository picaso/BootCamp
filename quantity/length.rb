class Length

  attr_reader :conversion_factor

  def initialize (conversion_factor)
    @conversion_factor = conversion_factor
  end

  def self.foot
    Length.new(12)
  end

  def self.inches
    Length.new(1)
  end

  def self.mile
    Length.new(63360)
  end

  def self.yard
    Length.new(36)
  end

end
