class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :image
      t.string :image2
      t.string :name
      t.string :scientific
      t.boolean :pet_friendly
      t.string :light
      t.string :water
      t.string :fertilizer
      t.string :temperature
      t.string :humidity

      t.timestamps
    end
  end
end
