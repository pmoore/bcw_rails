# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120614172050) do

  create_table "api_logs", :force => true do |t|
    t.string   "url"
    t.float    "execution_time"
    t.integer  "http_response_code"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "actor_name"
    t.string   "actor_name_plural"
    t.string   "api_string"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.boolean  "active",            :default => true
  end

  create_table "categories_reviews", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "review_id"
  end

  create_table "categories_vendors", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "vendor_id"
  end

  create_table "deals", :force => true do |t|
    t.string   "promotion_id"
    t.string   "deal_id"
    t.string   "title"
    t.string   "description"
    t.date     "expiration_date"
    t.string   "display_value"
    t.string   "display_discount"
    t.string   "display_type"
    t.string   "display_limit"
    t.string   "promotion_url"
    t.string   "mobile_promotion_url"
    t.string   "deal_url"
    t.boolean  "exclusive"
    t.integer  "category_id"
    t.integer  "vendor_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "deals", ["vendor_id"], :name => "index_deals_on_vendor_id"

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "endorsements", :force => true do |t|
    t.integer  "vendor_id"
    t.string   "endorser_id"
    t.string   "endorser_comments"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "endorsements", ["vendor_id"], :name => "index_endorsements_on_vendor_id"

  create_table "events", :force => true do |t|
    t.string   "event_id"
    t.string   "title"
    t.string   "event_type"
    t.integer  "cost"
    t.string   "description"
    t.date     "start_date"
    t.date     "end_date"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "event_url"
    t.string   "mobile_event_url"
    t.integer  "vendor_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "events", ["vendor_id"], :name => "index_events_on_vendor_id"

  create_table "faq_sets", :force => true do |t|
    t.integer  "category_id"
    t.integer  "vendor_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "faqs", :force => true do |t|
    t.string   "faq_question"
    t.string   "faq_answer"
    t.integer  "faq_set_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "images", :force => true do |t|
    t.integer  "imageable_id"
    t.string   "image_600_600"
    t.string   "image_400_400"
    t.string   "image_220_220"
    t.string   "image_130_130"
    t.string   "image_square_130_130"
    t.string   "image_square_96_96"
    t.string   "image_square_64_64"
    t.string   "image_square_48_48"
    t.string   "imageable_type"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "image_1200_1200"
  end

  create_table "locations", :force => true do |t|
    t.integer  "locatable_id"
    t.string   "phone"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "locatable_type"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
    t.boolean  "exact_location"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "ww_id"
  end

  create_table "partner_users", :force => true do |t|
    t.string   "ww_id"
    t.string   "external_user_id"
    t.string   "email",                  :default => "", :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "alias"
    t.string   "login_ip"
    t.date     "wedding_date"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "encrypted_password",     :default => "", :null => false
  end

  add_index "partner_users", ["email"], :name => "index_partner_users_on_email", :unique => true

  create_table "portfolio_albums", :force => true do |t|
    t.string   "title"
    t.string   "comments"
    t.string   "portfolio_type"
    t.integer  "vendor_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "portfolio_albums", ["vendor_id"], :name => "index_portfolio_albums_on_vendor_id"

  create_table "preferred_vendors", :force => true do |t|
    t.string   "category"
    t.string   "owner_vendor_id"
    t.string   "preferred_vendor_id"
    t.integer  "vendor_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "reviews", :force => true do |t|
    t.text     "ww_id"
    t.text     "reviewer_comments"
    t.text     "vendor_comments"
    t.text     "status"
    t.text     "event_type"
    t.date     "event_date"
    t.float    "service_score"
    t.float    "response_score"
    t.float    "value_score"
    t.float    "flexibility_score"
    t.float    "professional_score"
    t.string   "categories"
    t.integer  "user_id"
    t.integer  "vendor_id"
    t.boolean  "recommend"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.text     "reviewer_name"
    t.boolean  "anonymous"
  end

  create_table "users", :force => true do |t|
    t.string   "ww_id"
    t.string   "email",                               :default => "", :null => false
    t.integer  "facebook_id",            :limit => 8
    t.string   "first_name"
    t.string   "last_name"
    t.string   "login_ip"
    t.string   "password_new"
    t.string   "alias"
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "encrypted_password",                  :default => "", :null => false
    t.boolean  "forum_abused"
    t.boolean  "anonymous"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vendors", :force => true do |t|
    t.string   "name",                                :null => false
    t.string   "email"
    t.string   "ww_id"
    t.float    "average_wedding_review_score"
    t.float    "average_wedding_service_score"
    t.float    "average_wedding_value_score"
    t.float    "average_wedding_response_score"
    t.float    "average_wedding_professional_score"
    t.float    "average_wedding_flexibility_score"
    t.integer  "review_wedding_count"
    t.float    "average_event_review_score"
    t.float    "average_event_service_score"
    t.float    "average_event_value_score"
    t.float    "average_event_response_score"
    t.float    "average_event_professional_score"
    t.float    "average_event_flexibility_score"
    t.float    "average_combined_review_score"
    t.float    "average_combined_service_score"
    t.float    "average_combined_value_score"
    t.float    "average_combined_response_score"
    t.float    "average_combined_professional_score"
    t.float    "average_combined_flexibility_score"
    t.integer  "review_event_count"
    t.string   "website_url"
    t.string   "storefront_url"
    t.string   "mobile_storefront_url"
    t.string   "storefront_reviews_url"
    t.string   "storefront_website_url"
    t.string   "storefront_map_url"
    t.string   "blog_website_url"
    t.string   "blog_rss_url"
    t.string   "facebook_website_url"
    t.string   "twitter_website_url"
    t.string   "youtube_website_url"
    t.text     "tagline"
    t.text     "about"
    t.integer  "listing_type"
    t.boolean  "allow_leads"
    t.boolean  "allow_phone_appointments"
    t.boolean  "allow_calendar_appointments"
    t.boolean  "national"
    t.string   "primary_region_code"
    t.string   "faq_additional"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.boolean  "allow_in_person_appointments"
    t.text     "go_mobile_about"
    t.string   "go_mobile_button_color"
  end

  add_index "vendors", ["name"], :name => "index_vendors_on_name"

  create_table "vendors_vendors_i_know", :id => false, :force => true do |t|
    t.integer "vendor_id"
    t.integer "vendor_i_know_id"
  end

  create_table "vendors_vendors_i_worked", :id => false, :force => true do |t|
    t.integer "vendor_id"
    t.integer "vendor_i_worked_id"
  end

end
