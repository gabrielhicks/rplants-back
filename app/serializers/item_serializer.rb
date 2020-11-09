class ItemSerializer < ApplicationSerializer
  attributes :id, :name, :image2, :image, :name, :scientific, :pet_friendly, :light, :water, :fertilizer, :temperature, :humidity, :latitude, :longitude 
  # has_many :purchases
  has_one :price
end

