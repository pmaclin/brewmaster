class CreateBeerStyles < ActiveRecord::Migration
  def change
    create_table :beer_styles do |t|
      t.string :name
      t.text :std_flav_profile
      t.string :image

      t.timestamps null: false
    end
  end
end
