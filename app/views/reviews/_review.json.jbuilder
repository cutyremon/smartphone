json.extract! review, :id, :user_id, :smartphone_id, :piture, :description, :rate, :comment_id, :created_at, :updated_at
json.url review_url(review, format: :json)
