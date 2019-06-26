class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.integer :vehicle_part_id
      t.integer :supplier_id
      t.decimal :price, precision: 12, scale: 2

      t.timestamps
    end
  end
end
