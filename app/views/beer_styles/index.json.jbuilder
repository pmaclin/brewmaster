json.array!(@beer_styles) do |beer_style|
  json.extract! beer_style, :id, :name, :std_flav_profile, :image
  json.url beer_style_url(beer_style, format: :json)
end
