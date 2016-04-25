class AddReceiverIdToRecommendation < ActiveRecord::Migration
  def change
    add_column :recommendations, :receiver_id, :integer
  end
end
