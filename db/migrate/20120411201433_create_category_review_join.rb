class CreateCategoryReviewJoin < ActiveRecord::Migration
  def self.up
    create_table :categories_reviews, :id => false do |t|
      t.integer :category_id
      t.integer :review_id
    end
  end

  def self.down
    drop_table :categories_reviews
  end
end
