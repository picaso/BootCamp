require File.expand_path(File.dirname(__FILE__) + '/quantity')
require File.expand_path(File.dirname(__FILE__) + '/length')

class Quantity
  attr_accessor :unit, :amount
  def initialize(amount, unit)
    @amount = amount
    @unit = unit
  end

  def ==(other)
    if other.unit.class == self.unit.class
       self.convert_unit ==other.convert_unit
    else
       raise RuntimeError, "Error"
    end
  end

  protected
  def convert_unit
    @amount * unit.conversion_factor
  end

end
