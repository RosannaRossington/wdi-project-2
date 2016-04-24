class AddReceiverUsernameToRecommendations < ActiveRecord::Migration
  def change
    add_column :recommendations, :receiver_username, :string
  end
end
