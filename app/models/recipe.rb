class Recipe < ActiveRecord::Base
  belongs_to :user

  has_many :batches

  # has_many :beer_styles, :through => :batches

  belongs_to :beer_style

  validates :user, :presence => true, :uniqueness => true
  validates :name, :presence => true, :uniqueness => { :sope => :user}
  validates :brew_type, :presence => true

end
