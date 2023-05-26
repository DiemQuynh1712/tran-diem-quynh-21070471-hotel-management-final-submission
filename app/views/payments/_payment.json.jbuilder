json.extract! payment, :id, :booking_id, :paid, :payment_method_id, :pay_time, :created_at, :updated_at
json.url payment_url(payment, format: :json)
