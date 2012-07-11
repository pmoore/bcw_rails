class CreatePortfolioAlbums < ActiveRecord::Migration
  def self.up
    create_table :portfolio_albums do |t|
      t.string :title
      t.string :comments
      t.string :portfolio_type
      t.references :vendor

      t.timestamps
    end
    add_index :portfolio_albums, :vendor_id
  end
  
  def self.down
    drop_table :portfolio_albums
  end
  
end
