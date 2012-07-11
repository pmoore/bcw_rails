class CreateFaqSets < ActiveRecord::Migration
  def self.up
    create_table :faq_sets do |t|
      t.references :category
      t.references :vendor

      t.timestamps
    end
  end

  def self.down
    drop_table :faq_sets
  end
end
