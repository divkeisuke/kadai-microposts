class Micropost < ApplicationRecord
  belongs_to :user

  has_many :favorites
  has_many :favorites_user, through: :favorites, source: :user
  
  validates :content,presence: true,length:{maximum:250}
end
