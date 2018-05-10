json.extract! review, :id, :user_id, :text, :reviewable_id, :reviewable_type, :created_at, :updated_at
json.url review_url(review, format: :json)
