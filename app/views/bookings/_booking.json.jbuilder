json.extract! booking, :id, :booking_no, :customer_id, :check_in_date, :check_out_date, :room_type_id, :room_number, :num_of_nights, :num_of_adults, :num_of_children, :required_services, :created_at, :updated_at
json.url booking_url(booking, format: :json)
