class FixAnonymousFlags < ActiveRecord::Migration
  def up
    remove_column :users, :anonymous
    remove_column :reviews, :anonymous
    add_column :users, :anonymous, :boolean
    add_column :reviews, :anonymous, :boolean
  end

  def down
    remove_column :users, :anonymous
    remove_column :reviews, :anonymous
    add_column :users, :anonymous, :string
    add_column :reviews, :anonymous, :string
  end
end
