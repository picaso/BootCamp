class Chance
  @@max = 100


  def initialize(value)
    @occurance = value


  end

  def get_chance_happening

    @occurance

  end

  def ==(other_obj)
    if other_obj.class != Chance
      false
    else
      get_chance_happening == other_obj.get_chance_happening
    end


  end


  def not

    Chance.new(@@max-@occurance)

  end

  def or_(other_obj)
    self + other_obj

  end

  def and_(other_obj)
    self*other_obj

  end

  def xor(other_obj)
    or_(other_obj) - and_(other_obj)
  end

  def + (other_obj)
    Chance.new(get_chance_happening+other_obj.get_chance_happening)
  end

  def * (other_obj)
    Chance.new(get_chance_happening*other_obj.get_chance_happening)
  end

  def - (other_obj)
    Chance.new(get_chance_happening-other_obj.get_chance_happening)
  end


end

