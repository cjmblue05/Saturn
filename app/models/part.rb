class Part < ApplicationRecord
  has_many :vehicle_parts
  has_many :vehicles, through: :vehicle_parts

  def self.import(file)
    spreadsheet = Roo::Spreadsheet.open(file.path)
    header = spreadsheet.row(2)

    # spreadsheet.sheets do |name, sheet|
    spreadsheet.each_with_pagename do |sheet_name, sheet|
      (3..spreadsheet.last_row).each do |i|

        next if spreadsheet.cell(i,'A').blank?

        vb = VehicleBrand.find_or_create_by(name: sheet_name)

        vm = VehicleModel.find_or_create_by(
          name: spreadsheet.cell(i,'A'),
          vehicle_brand_id: vb.id,
          fuel: spreadsheet.cell(i,'C'),
          transmission: spreadsheet.cell(i,'D')
        )

        v = Vehicle.find_or_create_by(
          year_model: spreadsheet.cell(i,'B'),
          vehicle_brand_id: vb.id,
          vehicle_model_id: vm.id,
          chassis_number: spreadsheet.cell(i,'H')
        )

        if spreadsheet.cell(i,'E').blank?
          #do nothing
        else
          p = self.find_or_create_by(name: spreadsheet.cell(i,'E'))

          VehiclePart.find_or_create_by(
            vehicle_id: v.id,
            part_id: p.id
          )
        end

        supplier = Supplier.find_or_create_by(name: spreadsheet.cell(i,'G')).id

        if spreadsheet.cell(i,'F').blank?
          #do nothing
        else
          Price.find_or_create_by(
            vehicle_part_id: p.id,
            supplier_id: supplier,
            price: spreadsheet.cell(i,'F')
          )
        end

      end
    end
  end

end
