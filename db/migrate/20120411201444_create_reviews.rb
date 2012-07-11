class CreateReviews < ActiveRecord::Migration
  def self.up
    create_table :reviews do |t|
      t.text          :ww_id
      t.text          :reviewer_comments
      t.text          :vendor_comments
      t.text          :status
      t.text          :event_type
      t.date          :event_date
      t.float         :service_score
      t.float         :response_score
      t.float         :value_score
      t.float         :flexibility_score
      t.float         :professional_score
      t.string        :categories
      t.integer       :user_id
      t.integer       :vendor_id
      t.boolean       :recommend
      t.timestamps
    end
  end

  def self.down
    drop_table :reviews
  end
end
