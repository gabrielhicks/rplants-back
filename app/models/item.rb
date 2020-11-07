class Item < ApplicationRecord
    belongs_to :price
    has_many :purchases
    has_many :users, through: :purchases
end