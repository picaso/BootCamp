$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'attendant'
require 'mocha'

class ParkingLotTest < Test::Unit::TestCase
  def test_add_car
    lot = Lot.new(100)
    attendant = Attendant.new lot
    lot.subscribe_to_lot(attendant)
    vehicle = Vehicle.new
    assert_equal vehicle, lot.park(vehicle)
  end

  def test_remove_parked_car
    lot = Lot.new(100)

    attendant = Attendant.new lot
    vehicle = Vehicle.new
    lot.subscribe_to_lot(attendant)
    lot.park(vehicle)
    lot.park(Vehicle.new)

    assert_equal vehicle, lot.remove(vehicle)

    assert_raise RuntimeError do
      assert_not_equal vehicle, lot.remove(vehicle)
    end
  end


end

