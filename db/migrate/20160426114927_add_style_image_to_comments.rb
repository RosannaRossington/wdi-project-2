class AddStyleImageToComments < ActiveRecord::Migration
  def change
    add_column :comments, :style_image, :string
  end
end
