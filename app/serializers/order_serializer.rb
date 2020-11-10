class OrderSerializer < ApplicationSerializer
  attributes :id, :total, :created_at, :order_number, :purchases
 

  def purchases
    ActiveModel::SerializableResource.new(object.purchases,  each_serializer: PurchaseSerializer)
  end

  def created_at
    self.object.created_at.in_time_zone("Eastern Time (US & Canada)").to_date
  end
  

  
end
