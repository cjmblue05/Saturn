class CreateVehicleModels < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_models do |t|
      t.string :name
      t.integer :vehicle_brand_id
      t.string :fuel
      t.string :transmission

      t.timestamps
    end
  end
end
