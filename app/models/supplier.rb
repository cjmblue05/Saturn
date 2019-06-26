class Supplier < ApplicationRecord
  has_many :prices
  has_many :vehicle_parts, through: :prices
end
