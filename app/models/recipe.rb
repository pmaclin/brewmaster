class Recipe < ActiveRecord::Base
  belongs_to :user

  has_many :batches

  has_many :beer_styles, :through => :batches
end
