json.extract! vehicle, :id, :year_model, :vehicle_brand_id, :vehicle_model_id, :chassis_number, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
