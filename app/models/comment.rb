class Comment < ActiveRecord::Base
  belongs_to :user

  validates :comment, presence: true
  validates :sender_id, presence: true
  validates :receiver_id, presence: true
  validates :recommendation_id, presence: true
  
end
