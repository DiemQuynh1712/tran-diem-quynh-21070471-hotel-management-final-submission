json.extract! roomtype, :id, :name, :room_class_id, :description, :room_size, :price_per_night, :created_at, :updated_at
json.url roomtype_url(roomtype, format: :json)
