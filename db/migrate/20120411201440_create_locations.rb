class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.integer     :locatable_id
      t.string      :phone
      t.string      :address1
      t.string      :address2
      t.string      :city
      t.string      :state
      t.string      :zip
      t.string      :country
      t.string      :locatable_type
      t.float       :latitude
      t.float       :longitude
      t.boolean     :gmaps
      t.boolean     :exact_location
      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
