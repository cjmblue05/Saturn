class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.integer :year_model
      t.integer :vehicle_brand_id
      t.integer :vehicle_model_id
      t.string :chassis_number

      t.timestamps
    end
  end
end
