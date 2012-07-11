class AddAnonymousFlags < ActiveRecord::Migration
  def up
    add_column :users, :anonymous, :string
    add_column :reviews, :anonymous, :string
  end

  def down
    remove_column :users, :anonymous
    remove_column :reviews, :anonymous
  end
end
