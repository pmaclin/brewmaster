class Batch < ActiveRecord::Base
  belongs_to :beer_style
  belongs_to :recipe

  has_many :reviews
  has_many :uniques
end
