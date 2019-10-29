class Car < ApplicationRecord
  #has_many :cars_parts
  #has_many :parts, through: :cars_parts
  validates :make, :model, :vin, :country, presence: true
  validates :vin, uniqueness: true
  #validates :vin, format: {
  #    with: %r{\.(gif\jpeg\png)\Z}i,
  #    message: 'must be a URL for GIF,JPG or PNG image.' }
end
