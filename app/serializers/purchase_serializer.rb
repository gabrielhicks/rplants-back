class PurchaseSerializer < ApplicationSerializer
  attributes :id, :quantity, :size, :price, :item_name

  def item_name
    self.object.item.name
  end

 
end
