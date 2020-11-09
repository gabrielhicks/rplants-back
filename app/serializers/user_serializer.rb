class UserSerializer < ApplicationSerializer
  attributes :id, :email, :name
  # accepts_nested_attributes_for :orders
  has_many :orders

  # def orders
  #   ActiveModel::SerializableResource.new(object.orders, each_serializer: OrderSerializer)
  # end

end
