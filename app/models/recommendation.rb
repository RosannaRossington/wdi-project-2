class Recommendation < ActiveRecord::Base
  belongs_to :user

  # before_validation :add_default_status

  validates :message, presence: true
  validates :product_url, presence: true


# a recommendation must have a screengrab
# current_user needs to input url(text)
# Rcommendation model uses the method to save the url and create a screengrab using gastly
# gastly downloads/saves in file and to product_url variable
# self.url - is get user input

  before_save :get_product_url

  # private
  #   def add_default_status
  #       self.status = "pending" if self.status.nil?
  #   end

  private
    def get_product_url

      self.product_url = Gastly.capture(self.product_url, 'public/output.png')
    end


end
