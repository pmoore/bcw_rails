class CreateVendorsVendorsIKnow< ActiveRecord::Migration
  def self.up
    create_table :vendors_vendors_i_know, :id => false do |t|
      t.integer   :vendor_id
      t.integer   :vendor_i_know_id
    end
  end

  def self.down
    drop_table :vendors_vendors_i_know
  end
end
