class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :batch

  validates :user, :presence => true
  validates :taste, :presence => true
  validates :aroma, :presence => true
  validates :appearance, :presence => true
  validates :overall_score, :presence => true
end
