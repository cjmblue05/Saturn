json.extract! vehicle_model, :id, :name, :vehicle_brand_id, :fuel, :transmission, :created_at, :updated_at
json.url vehicle_model_url(vehicle_model, format: :json)
