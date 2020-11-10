class Order < ApplicationRecord
    has_many :purchases
    has_many :items, through: :purchases
    belongs_to :user
    accepts_nested_attributes_for :purchases
end
