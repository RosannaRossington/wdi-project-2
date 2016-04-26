class AddStyleImageToRecommendations < ActiveRecord::Migration
  def change
    add_column :recommendations, :style_image, :string
  end
end
