class BeerStyle < ActiveRecord::Base
  has_many :batches

  has_many :recipes, :through => :batches
end
