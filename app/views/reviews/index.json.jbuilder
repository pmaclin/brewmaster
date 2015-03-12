json.array!(@reviews) do |review|
  json.extract! review, :id, :taste, :aroma, :appearance, :headline, :overall_score, :like_dislike, :review, :user_id, :batch_id
  json.url review_url(review, format: :json)
end
