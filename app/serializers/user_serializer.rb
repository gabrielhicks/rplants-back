class UserSerializer < ApplicationSerializer
  attributes :id, :email, :name, :orders
  # has_many :orders

  def orders
    ActiveModel::SerializableResource.new(object.orders,  each_serializer: OrderSerializer)
  end

  # def orders
  #   self.object.orders.map do |order|
  #     {order_number: order.order_number, created_at: order.created_at, total: order.total}
  # end
# end

  # def orders
  #   ActiveModel::SerializableResource.new(object.orders, each_serializer: OrderSerializer)
  # end

end
