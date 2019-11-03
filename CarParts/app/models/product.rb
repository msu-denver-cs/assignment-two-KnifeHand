class Product < ApplicationRecord #FIXME: doesn't like the syntax ::Base
  has_and_belongs_to_many :cars  #FIXED: Need to associate product with the car.
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_orequal_to: 0.01}
  validates :title, uniqueness: true #FIXME: validations are the cause of the Failures during rails test -->  Failure: ProductsControllerTest#test_should_update_product [/Users/matthewhurt/work/assignment-two-KnifeHand/CarParts/test/controllers/products_controller_test.rb:44]:
end
