class CreateDeals < ActiveRecord::Migration
  def self.up
    create_table :deals do |t|
      t.string :promotion_id
      t.string :deal_id
      t.string :title
      t.string :description
      t.date :expiration_date
      t.string :display_value
      t.string :display_discount
      t.string :display_type
      t.string :display_limit
      t.string :promotion_url
      t.string :mobile_promotion_url
      t.string :deal_url
      t.boolean :exclusive
      t.integer :category_id
      t.references  :vendor

      t.timestamps
    end
    add_index :deals, :vendor_id
    
  end
  
  def self.down
    drop_table :deals
  end
  
end
