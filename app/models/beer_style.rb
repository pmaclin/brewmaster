class BeerStyle < ActiveRecord::Base
  has_many :batches
  has_many :recipes

  has_many :recipes, :through => :batches

  validates :name, :presence => true, :uniqueness => true
  # validates :std_flav_profile :presence => true
end
