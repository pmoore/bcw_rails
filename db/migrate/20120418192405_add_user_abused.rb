class AddUserAbused < ActiveRecord::Migration
  def up
    add_column :users, :forum_abused, :boolean
  end

  def down
    remove_column :users, :forum_abused
  end
end
