json.extract! customer, :id, :name, :date_of_birth, :phone_number, :email, :address, :postcode, :created_at, :updated_at
json.url customer_url(customer, format: :json)
