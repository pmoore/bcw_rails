class CreateCategoriesTable < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string          :name
      t.string          :actor_name
      t.string          :actor_name_plural
      t.string          :api_string
      t.timestamps
    end
  end
end