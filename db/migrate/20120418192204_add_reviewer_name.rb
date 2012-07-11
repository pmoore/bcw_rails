class AddReviewerName < ActiveRecord::Migration
  def up
    add_column :reviews, :reviewer_name, :text
  end

  def down
    remove_column :reviews, :reviewer_name
  end
end
