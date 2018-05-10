json.extract! booking, :id, :user_id, :items_id, :started_at, :endet_on, :created_at, :updated_at
json.url booking_url(booking, format: :json)
