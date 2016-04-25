class RemoveRecieverIdAndSenderIdFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :receiver_id
    remove_column :comments, :sender_id
  end
end
