class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :taste
      t.integer :aroma
      t.integer :appearance
      t.string :headline
      t.integer :overall_score
      t.boolean :like_dislike
      t.text :review
      t.references :user, index: true
      t.references :batch, index: true

      t.timestamps null: false
    end
    add_foreign_key :reviews, :users
    add_foreign_key :reviews, :batches
  end
end
