class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.string :size
      t.string :brew_date
      t.string :bottle_date
      t.float :actual_original_gravity
      t.float :actual_final_gravity
      t.float :actual_abv
      t.string :actual_aroma
      t.integer :actual_ibu
      t.string :image
      t.text :actual_flavor_profile
      t.references :beer_style, index: true
      t.references :recipe, index: true

      t.timestamps null: false
    end
    add_foreign_key :batches, :beer_styles
    add_foreign_key :batches, :recipes
  end
end
