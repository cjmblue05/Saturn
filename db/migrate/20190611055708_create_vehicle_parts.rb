class CreateVehicleParts < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_parts do |t|
      t.integer :vehicle_id
      t.integer :part_id

      t.timestamps
    end
  end
end
