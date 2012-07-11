class AddActiveFlagToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :active, :boolean, :default => true
    execute 'UPDATE categories SET active=1;'
  end
end
