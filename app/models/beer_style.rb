class BeerStyle < ActiveRecord::Base
  has_many :batches
end
