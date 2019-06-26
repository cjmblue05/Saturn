class VehiclePart < ApplicationRecord
  belongs_to :vehicle, optional: :true
  belongs_to :part, optional: :true

  has_many :prices
  has_many :suppliers, through: :prices

  def vehicle_name
    self.vehicle.name
  end
  
end
