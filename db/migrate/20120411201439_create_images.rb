class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.integer         :imageable_id
      t.string          :image_600_600
      t.string          :image_400_400
      t.string          :image_220_220
      t.string          :image_130_130
      t.string          :image_square_130_130
      t.string          :image_square_96_96
      t.string          :image_square_64_64
      t.string          :image_square_48_48
      t.string          :imageable_type
      t.timestamps      
    end
  end

  def self.down
    drop_table :images
  end
end
