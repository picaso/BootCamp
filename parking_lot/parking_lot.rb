require 'vehicle'
require 'parking_lot_observer'
class Lot

  def initialize(total_spaces = 1)
    @lot = Hash.new
    @total_spaces = total_spaces
  end

  def park(vehicle)
    if can_park
      @lot[vehicle] = vehicle
      notify
      vehicle
    else
      raise RuntimeError, "Parking lot full, cannot add new vehicle"
    end
  end

  def subscribe_to_lot subscribe
    subscribe subscribe
  end

  def remove(vehicle)
    if @lot.delete(vehicle) == nil
      raise RuntimeError, "Car not found, cannot be removed"
    else
      notify
      vehicle
    end
  end


  include ParkingLotObserver

  def can_park
    @lot.size < @total_spaces
  end


end