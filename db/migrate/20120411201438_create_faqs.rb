class CreateFaqs < ActiveRecord::Migration
  def self.up
    create_table :faqs do |t|
      t.string :faq_question
      t.string :faq_answer
      t.references :faq_set

      t.timestamps
    end
  end

  def self.down
    drop_table :faqs
  end
end
