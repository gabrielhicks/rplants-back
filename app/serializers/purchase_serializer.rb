class PurchaseSerializer < ApplicationSerializer
  attributes :id, :quantity, :size, :price, :item_name
  # has_one :order
  # has_one :item
  # accepts_nested_attributes_for :item

  # def item
  #   ActiveModel::SerializableResource.new(object.orders, each_serializer: OrderSerializer)
  # end

  def item_name
    self.object.item.name
  end

  # self.object.orders.map do |order|
  #   #     {order_number: order.order_number, created_at: order.created_at, total: order.total}
  #   # end

end
