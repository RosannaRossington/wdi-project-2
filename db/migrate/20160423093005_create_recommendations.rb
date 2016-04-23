class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.text :message
      t.text :product_url
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
