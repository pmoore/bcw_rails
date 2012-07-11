class AddZoomImageSize < ActiveRecord::Migration
  def up
    add_column :images, :image_1200_1200, :string
  end

  def down
    remove_column :images, :image_1200_1200, :string
  end
end
