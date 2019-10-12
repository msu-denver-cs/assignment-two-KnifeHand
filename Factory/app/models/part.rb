class Part < ApplicationRecord
  has_many :cars_parts
  has_many :cars, through: :cars_parts
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  #validates :image_url, allow_blank: true, format: {
   #   with: %r{\.(gif\jpeg\png)\Z}i,
    #  message: 'must be a URL for GIF,JPG or PNG image.' }
end
