class CreatePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :prices do |t|
      t.string :small
      t.string :medium
      t.string :large

      t.timestamps
    end
  end
end
