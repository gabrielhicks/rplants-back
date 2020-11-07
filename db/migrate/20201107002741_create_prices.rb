class CreatePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :prices do |t|
      t.float :small
      t.float :medium
      t.float :large

      t.timestamps
    end
  end
end
