json.extract! review, :id, :customer_id, :star, :review, :created_at, :updated_at
json.url review_url(review, format: :json)
