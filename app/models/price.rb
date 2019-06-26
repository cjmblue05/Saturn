class Price < ApplicationRecord
  belongs_to :vehicle_part, optional: :true
  belongs_to :supplier, optional: :true
end
