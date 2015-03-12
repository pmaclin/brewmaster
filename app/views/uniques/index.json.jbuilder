json.array!(@uniques) do |unique|
  json.extract! unique, :id, :rand_num, :batch_id, :user_id
  json.url unique_url(unique, format: :json)
end
