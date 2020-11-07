class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :order_number
      t.string :total
      t.timestamps
    end
  end
end
