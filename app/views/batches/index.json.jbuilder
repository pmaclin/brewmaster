json.array!(@batches) do |batch|
  json.extract! batch, :id, :size, :brew_date, :bottle_date, :actual_original_gravity, :actual_final_gravity, :actual_abv, :actual_aroma, :actual_ibu, :image, :actual_flavor_profile, :beer_style_id, :recipe_id
  json.url batch_url(batch, format: :json)
end
