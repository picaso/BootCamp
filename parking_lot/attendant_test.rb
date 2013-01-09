$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'attendant'
require 'mocha'

class AttendantTest < Test::Unit::TestCase

  def test_attendant_parks_vehicle
    lot = Lot.new
    vehicle = Vehicle.new
    attendant = Attendant.new(lot)
    lot.expects(:park).with(vehicle).returns(vehicle)
    assert_equal vehicle, attendant.park(vehicle) 
  end

  def test_attendant_gets_vehicle
    lot = Lot.new
    attendant = Attendant.new(lot)
    vehicle = Vehicle.new;

    lot.expects(:remove).with(vehicle).returns(vehicle)

    assert_equal vehicle, attendant.get(vehicle)
  end

  def test_if_attendant_can_park_at_16
    lot = Lot.new(10)
    vehicle2 = Vehicle.new

    attendant = Attendant.new(lot, 16)

    8.times do |v|
      attendant.park(Vehicle.new)
    end

    assert_raise RuntimeError do
      assert_equal vehicle2, attendant.park(vehicle2)
    end


  end
end