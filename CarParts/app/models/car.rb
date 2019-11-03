class Car < ApplicationRecord #FIXME: doesn't like the syntax ::Base
  has_many :products #FIXED: Need to associate the car with the product.
  validates :vin, numericality: {greater_than_or_equal_to: 1} #FIXED: validations are the cause of the Failures during rails test, CarsControllerTest#test_should_create_car
  validates :make, presence:true
  validates :model, presence:true
  #validates :year, presence:true #FIXME: "Car.count" didn't change by 1. Expected: 3 Actual: 2
  validates :country, presence:true
end
