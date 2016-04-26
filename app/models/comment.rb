class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :recommendation

  validates :comment, presence: true
  validates :recommendation_id, presence: true

  mount_uploader :style_image, StyleImageUploader
  
end
