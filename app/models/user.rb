class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :recipes
  has_many :reviews
  has_many :uniques

  has_many :batches, :through => :uniques
  has_many :batches, :through => :reviews

  validates :email, :presence => true, :uniqueness => true
  validates :username, :presence => true, :uniqueness => true
end
