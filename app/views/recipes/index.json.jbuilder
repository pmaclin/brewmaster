json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :brew_type, :description, :target_original_gravity, :target_final_gravity, :target_abv, :target_aroma, :target_ibu, :label, :target_flavor_profile, :user_id
  json.url recipe_url(recipe, format: :json)
end
