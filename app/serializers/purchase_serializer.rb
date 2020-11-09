class PurchaseSerializer < ApplicationSerializer
  attributes :id, :item_id:, :quantity, :size, :price
  has_one :order
  # has_one :item
  # accepts_nested_attributes_for :item

  # def item
  #   ActiveModel::SerializableResource.new(object.orders, each_serializer: OrderSerializer)
  # end


end
