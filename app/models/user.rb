class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :orders
    accepts_nested_attributes_for :orders

    
end
