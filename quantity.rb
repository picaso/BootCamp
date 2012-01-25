class Quantity

  def initialize(amount, unit)
    @base = :in
    @amount = amount
    @unit = unit
  end

  def ==(other)
    if other.class == Quantity
      converter ==other.converter
    else
      false
    end
  end

  protected
  def converter

    if @base == :in
      h = Hash[:ft=> 12, :yd=> 36, :ml=> 63360, :in=> 1]
      @amount * h[@unit]
    end
  end

end