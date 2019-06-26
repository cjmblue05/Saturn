class VehicleModel < ApplicationRecord
  belongs_to :vehicle_brand, optional: :true
  has_many :parts
  has_many :vehicles
end
