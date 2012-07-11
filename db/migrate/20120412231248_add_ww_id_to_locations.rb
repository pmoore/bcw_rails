class AddWwIdToLocations < ActiveRecord::Migration
  def change
    unless column_exists? :locations, :ww_id
      add_column :locations, :ww_id, :string
    end
  end
end