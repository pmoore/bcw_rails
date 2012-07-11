class CreateEndorsements < ActiveRecord::Migration
  def self.up
    create_table :endorsements do |t|
      t.references :vendor
      t.string :endorser_id
      t.string :endorser_comments

      t.timestamps
    end
    add_index :endorsements, :vendor_id
  end
  
  def self.down
    drop_table :endorsements
  end
  
end
