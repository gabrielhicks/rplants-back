class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :purchases
    has_many :items, through: :purchases
    has_many :orders, through: :purchases
end
