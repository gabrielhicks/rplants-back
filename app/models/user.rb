class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :orders

    def unique_orders
        self.orders.uniq
    end
end
