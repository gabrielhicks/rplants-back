class Item < ApplicationRecord
    belongs_to :price
    has_many :purchases
    has_many :orders, through: :purchases
end