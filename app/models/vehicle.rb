class Vehicle < ApplicationRecord
  belongs_to :vehicle_brand, optional: :true
  belongs_to :vehicle_model, optional: :true
  has_many :vehicle_parts
  has_many :parts, through: :vehicle_parts

  def name
    "#{self.year_model} #{self.vehicle_brand.name} #{self.vehicle_model.name}"
  end

end
