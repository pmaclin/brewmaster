class Batch < ActiveRecord::Base
  belongs_to :beer_style
  belongs_to :recipe
  belongs_to :user

  has_many :reviews
  has_many :uniques

  # has_many :users, :through => :reviews
  # has_many :users, :through => :uniques
  # belongs_to :users, :through => :recipes

   validates :user, :presence => true
  # validates :size, :presence => true
  # validates :brew_date, :presence => true
  # validates :bottle_date, :presence => true
  # validates :beer_style, :presence => true

end
