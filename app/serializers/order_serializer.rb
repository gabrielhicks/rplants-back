class OrderSerializer < ApplicationSerializer
  attributes :id, :total, :created_at, :order_number, :purchases
  # has_one :user
  # has_many :purchases
  # 

  # def purchases
  #   self.object.purchases.map do |pur|
  #     {quantity: pur.quantity, size: pur.size}
  #   end
  # end

  def purchases
    ActiveModel::SerializableResource.new(object.purchases,  each_serializer: PurchaseSerializer)
  end

  

  
end
