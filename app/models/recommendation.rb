class Recommendation < ActiveRecord::Base
  belongs_to :user
  has_many :comments 

  validates :message, presence: true
  validates :product_url, presence: true

  before_save :get_product_url

  private
    def get_product_url
      self.id = Time.now.to_i
      screengrab = Gastly.capture(self.product_url,"public/products/output-#{self.id}.png")
    end


end
