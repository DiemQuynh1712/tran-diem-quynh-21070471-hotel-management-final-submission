json.extract! employee, :id, :name, :position, :contact, :created_at, :updated_at
json.url employee_url(employee, format: :json)
