class RemoveReceiverUsernameFromRecommendation < ActiveRecord::Migration
  def change
    remove_column :recommendations, :receiver_username, :string
  end
end
