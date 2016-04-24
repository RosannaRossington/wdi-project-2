class RemoveReceiverIdFromRecommendations < ActiveRecord::Migration
  def change
    remove_column :recommendations, :receiver_id, :integer
  end
end
