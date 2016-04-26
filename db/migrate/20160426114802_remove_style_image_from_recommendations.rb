class RemoveStyleImageFromRecommendations < ActiveRecord::Migration
  def change
    remove_column :recommendations, :style_image
  end
end
