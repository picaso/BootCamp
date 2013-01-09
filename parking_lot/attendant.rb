require 'parking_lot'

class Attendant
  def initialize (lot, age=18)
    @lot = lot;
    @age = age
    lot.subscribe(self)
  end

  def park(vehicle)
    @lot.park(vehicle)
  end

  def get(vehicle)
    @lot.remove(vehicle)
  end

  def parking_lot_changed(filled_spaces, total_spaces)
    puts filled_spaces
    puts total_spaces
    if ((filled_spaces.to_f/total_spaces.to_f) * 100.0 > 80.0 and @age <=16)
      raise RuntimeError, "Parking lot too full, not children safe"
    end
  end
end