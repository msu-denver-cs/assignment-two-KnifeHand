class Car < ApplicationRecord
  #has_many :products #FIXME: Need to associate the car with the product.
  validates :vin, uniqueness: true #FIXME: validations are the cause of the Failures during rails test, CarsControllerTest#test_should_create_car
end
