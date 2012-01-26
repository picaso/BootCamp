class Quantity
  def initialize(amount, unit)
    @base = unit
    @amount = amount
    @unit = unit
  end

  def ==(other)
    if other.class == Quantity
      if convert_unit ==other.convert_unit
        true
      else
        raise RuntimeError, "Does not Compute"
      end
    else
      false
    end
  end

  protected
  def convert_unit
    conversion_index = Hash[:ft=> 12, :yd=> 36, :ml=> 63360, :in=> 1, :tsp=>1, :tbsp=> 3, :oz=> 6, :cup=> 48]
    if conversion_index[@unit]!=nil
      @amount * conversion_index[@unit]
    else
      @amount
    end
  end

end