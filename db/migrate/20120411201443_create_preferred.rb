class CreatePreferred< ActiveRecord::Migration
  def self.up
    create_table :preferred_vendors do |t|
      t.string :category
      t.string :owner_vendor_id
      t.string :preferred_vendor_id
      t.integer :vendor_id
      t.timestamps
    end
  end
end
