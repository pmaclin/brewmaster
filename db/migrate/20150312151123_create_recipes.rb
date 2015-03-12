class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :brew_type
      t.text :description
      t.float :target_original_gravity
      t.float :target_final_gravity
      t.float :target_abv
      t.string :target_aroma
      t.integer :target_ibu
      t.string :label
      t.text :target_flavor_profile
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :recipes, :users
  end
end
