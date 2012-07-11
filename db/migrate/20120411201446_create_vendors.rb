class CreateVendors < ActiveRecord::Migration
    def self.up
      create_table :vendors do |t|
      t.string      :name, :null => false
      t.string      :email
      t.string      :ww_id
      t.float       :average_wedding_review_score
      t.float       :average_wedding_service_score
      t.float       :average_wedding_value_score
      t.float       :average_wedding_response_score
      t.float       :average_wedding_professional_score
      t.float       :average_wedding_flexibility_score
      t.integer     :review_wedding_count
      t.float       :average_event_review_score
      t.float       :average_event_service_score
      t.float       :average_event_value_score
      t.float       :average_event_response_score
      t.float       :average_event_professional_score
      t.float       :average_event_flexibility_score
      t.float       :average_combined_review_score
      t.float       :average_combined_service_score
      t.float       :average_combined_value_score
      t.float       :average_combined_response_score
      t.float       :average_combined_professional_score
      t.float       :average_combined_flexibility_score
      t.integer     :review_event_count
      t.string      :website_url
      t.string      :storefront_url
      t.string      :mobile_storefront_url
      t.string      :storefront_reviews_url
      t.string      :storefront_website_url
      t.string      :storefront_map_url
      t.string      :blog_website_url
      t.string      :blog_rss_url
      t.string      :facebook_website_url
      t.string      :twitter_website_url
      t.string      :youtube_website_url
      t.text        :tagline
      t.text        :about
      t.integer     :listing_type
      t.boolean     :allow_leads
      t.boolean     :allow_phone_appointments
      t.boolean     :allow_calendar_appointments
      t.boolean     :national
      t.string      :primary_region_code
      t.string      :faq_additional
      t.timestamps
    end

    add_index :vendors, :name
  end

  def self.down
    drop_table :vendors
  end
end
