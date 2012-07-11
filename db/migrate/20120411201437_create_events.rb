class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :event_id
      t.string :title
      t.string :event_type
      t.integer :cost
      t.string :description
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.string :event_url
      t.string :mobile_event_url
      t.references :vendor

      t.timestamps
    end
    add_index :events, :vendor_id
  end
end
