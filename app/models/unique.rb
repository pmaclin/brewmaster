class Unique < ActiveRecord::Base
  belongs_to :batch
  belongs_to :user
end
