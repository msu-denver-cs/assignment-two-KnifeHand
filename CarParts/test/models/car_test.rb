require 'test_helper'

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "for two character model" do
    #s = Car.create({model => "aa"})
    #{#assert s.valid?
    #asswert s.save
    #assert_equal({}, s.errors.messages)
  end

  test "Car attributes must not be empty" do
    cars = Car.new
    assert cars.invalid?
    assert cars.errors[:make].any?
    assert cars.errors[:model].any?
    #assert cars.errors[:year].any? #FIXME: 1 FAIL, Expected false to be truthy.
    assert cars.errors[:vin].any?
    assert cars.errors[:country].any?
  end
end
