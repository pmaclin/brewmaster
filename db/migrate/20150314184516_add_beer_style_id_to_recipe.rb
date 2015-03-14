class AddBeerStyleIdToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :beer_style_id, :integer
  end
end
