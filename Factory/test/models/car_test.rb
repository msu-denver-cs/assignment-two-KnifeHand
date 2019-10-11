require 'test_helper'

class CarTest < ActiveSupport::TestCase
  test " car attributes must not be empty" do
    car = Cars.new
    assert car.invalid?
    assert car.errors[:make].any?
    assert car.errors[:model].any?
    assert car.errors[:vin].any?
    assert car.errors[:country].any?
  end
end
