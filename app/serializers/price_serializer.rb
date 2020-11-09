class PriceSerializer < ApplicationSerializer
    attributes :id, :small, :medium, :large
    has_many :items
end