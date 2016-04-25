class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text    :comment
      t.integer :sender_id
      t.integer :receiver_id
      t.integer :recommendation_id

      t.timestamps null: false
    end
  end
end
