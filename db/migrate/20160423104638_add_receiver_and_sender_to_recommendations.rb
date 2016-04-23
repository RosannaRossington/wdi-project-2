class AddReceiverAndSenderToRecommendations < ActiveRecord::Migration
  def change
    add_column :recommendations, :sender_id, :integer
    add_column :recommendations, :receiver_id, :integer
  end
end
