class RemoveUserIdFromRecommendation < ActiveRecord::Migration
  def change
    remove_column :recommendations, :user_id, :integer
  end
end
