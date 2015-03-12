class Batch < ActiveRecord::Base
  belongs_to :beer_style
  belongs_to :recipe
end
