class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.integer :item_id
      t.integer :user_id
      t.integer :order_id
      t.string :price
      t.integer :quantity
      t.string :size
      t.timestamps
    end
  end
end
