class OrderSerializer < ApplicationSerializer
  attributes :id, :total, :created_at, :order_number
  has_one :user
  has_many :purchases
  # accepts_nested_attributes_for :purchases

  # def purchases
  #   ActiveModel::SerializableResource.new(object.purchases, each_serializer: PurchaseSerializer)
  # end


end
