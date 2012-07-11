class AddGoMobileToVendor < ActiveRecord::Migration
  def up
    add_column :vendors, :go_mobile_about, :text
    add_column :vendors, :go_mobile_button_color, :string
  end

  def down
    remove_column :vendors, :go_mobile_about
    remove_column :vendors, :go_mobile_button_color
  end
end
