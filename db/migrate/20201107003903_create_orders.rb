class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :order_number
      t.string :total
      t.integer :user_id
      t.timestamps
    end
  end
end
