class Product < ApplicationRecord
  #belongs_to :car  #FIXME: Need to associate product with the car.
  validates :title, :description, :image_url, presence:true
  validates :price, numericality: {greater_than_orequal_to: 0.01}
end
