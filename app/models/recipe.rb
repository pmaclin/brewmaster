class Recipe < ActiveRecord::Base
  belongs_to :user

  has_many :batches

  has_many :beer_styles, :through => :batches

  validates :user, :presence => true, :uniqueness => true
  validates :name, :presence => true
  validates :brew_type, :presence => true

end
