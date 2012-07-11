class CreateVendorsVendorsIWorked < ActiveRecord::Migration
  def self.up
    create_table :vendors_vendors_i_worked, :id => false do |t|
      t.integer   :vendor_id
      t.integer   :vendor_i_worked_id
    end
  end

  def self.down
    drop_table :vendors_vendors_i_worked
  end
end
