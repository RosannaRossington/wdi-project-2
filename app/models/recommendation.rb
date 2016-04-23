class Recommendation < ActiveRecord::Base
  belongs_to :user

  validates :message, presence: true
  validates :product_url, presence: true
end
