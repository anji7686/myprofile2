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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141021171016) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: true do |t|
    t.string   "title",                 limit: 10000
    t.integer  "counter"
    t.integer  "latest_version_id"
    t.integer  "published_version_id"
    t.datetime "publish_date"
    t.datetime "expiry_date"
    t.boolean  "active"
    t.boolean  "in_embargo"
    t.boolean  "expired"
    t.string   "url_part"
    t.datetime "display_date"
    t.integer  "comments_count",                      default: 0
    t.integer  "total_rating",                        default: 0
    t.integer  "number_of_times_rated",               default: 0
    t.integer  "most_read",                           default: 0
    t.integer  "most_commented",                      default: 0
    t.integer  "average_rating"
    t.integer  "template_id"
    t.string   "template_type"
    t.boolean  "is_draft",                            default: false
    t.integer  "portal_id"
    t.integer  "image_id"
    t.integer  "section_id"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "source_id"
    t.integer  "media_detail_id"
    t.boolean  "premium"
    t.integer  "magazine_issue_id"
    t.string   "fragment_title_text"
    t.string   "primary_medium"
    t.integer  "image_sequence_id"
    t.integer  "language_id"
    t.integer  "audio_id"
    t.integer  "content_word_count"
    t.integer  "group_id"
    t.boolean  "waiting_for_approval"
    t.integer  "blog_id"
    t.integer  "subsection_id"
    t.integer  "copied_from"
    t.integer  "event_sponsor_type_id"
    t.integer  "event_speaker_type_id"
    t.string   "company"
    t.datetime "end_date"
    t.datetime "start_date"
  end

  add_index "articles", ["created_at"], name: "index_articles_on_created_at", using: :btree
  add_index "articles", ["display_date"], name: "index_articles_on_display_date", using: :btree
  add_index "articles", ["latest_version_id"], name: "article_latest_version_id", using: :btree
  add_index "articles", ["most_commented"], name: "index_articles_on_most_commented", using: :btree
  add_index "articles", ["most_read"], name: "index_articles_on_most_read", using: :btree
  add_index "articles", ["publish_date"], name: "index_articles_on_publish_date", using: :btree
  add_index "articles", ["section_id", "display_date"], name: "section_id_display_date", using: :btree
  add_index "articles", ["source_id", "display_date"], name: "key_source_id_display_date", using: :btree
  add_index "articles", ["title"], name: "index_articles_on_title", using: :btree
  add_index "articles", ["updated_at"], name: "index_articles_on_updated_at", using: :btree
  add_index "articles", ["url_part"], name: "index_articles_on_url_part", using: :btree

  create_table "comments", force: true do |t|
    t.integer  "entity_id"
    t.text     "title"
    t.string   "email"
    t.text     "description"
    t.string   "user_name"
    t.string   "status",           default: "live"
    t.string   "ip_address"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "subscriber_id"
    t.string   "entity_type"
    t.string   "entity_attribute"
  end

  add_index "comments", ["entity_id", "created_at"], name: "by_article_id_created_at", using: :btree

  create_table "images", force: true do |t|
    t.string   "image_name"
    t.string   "title"
    t.string   "alt_tag"
    t.string   "tag"
    t.string   "licence_type"
    t.string   "extension"
    t.integer  "thumbnail_version_id"
    t.integer  "default_version_id"
    t.integer  "original_version_id"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "caption",              limit: 10000
    t.string   "status"
    t.integer  "site_id"
  end

  add_index "images", ["alt_tag"], name: "index_images_on_alt_tag", using: :btree
  add_index "images", ["created_at"], name: "index_images_on_created_at", using: :btree
  add_index "images", ["default_version_id"], name: "index_images_on_default_version_id", using: :btree
  add_index "images", ["image_name"], name: "index_images_on_image_name", using: :btree
  add_index "images", ["licence_type"], name: "index_images_on_licence_type", using: :btree
  add_index "images", ["original_version_id"], name: "index_images_on_original_version_id", using: :btree
  add_index "images", ["thumbnail_version_id"], name: "index_images_on_thumbnail_version_id", using: :btree
  add_index "images", ["title"], name: "index_images_on_title", using: :btree

  create_table "subscribers", force: true do |t|
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_id"
    t.string   "password"
    t.string   "type"
    t.string   "institution_name"
    t.string   "reset_password_code"
    t.integer  "concurrent_user_max"
    t.datetime "last_login"
    t.datetime "reset_password_code_until"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "o_uid"
    t.string   "legacy_uid"
    t.string   "remember_me_key"
    t.datetime "remember_me_time"
    t.integer  "interval"
    t.integer  "remaining_concurrent_logins"
    t.integer  "bureau_id"
    t.string   "solutation"
    t.string   "phone",                       limit: 16
    t.integer  "extn"
    t.integer  "fax"
    t.integer  "job_role_id"
    t.integer  "industry_id"
    t.integer  "level_of_aquisition_id"
    t.integer  "business_size_id"
    t.integer  "campaign_id"
    t.string   "end_user_company_name"
    t.string   "Job_title"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "city"
    t.integer  "country_id"
    t.integer  "county_id"
    t.string   "postal_code"
    t.boolean  "terms_acceptance"
    t.boolean  "magazine_receive_status"
    t.boolean  "status"
    t.string   "data_source"
    t.date     "registration_date"
    t.string   "old_id"
    t.integer  "updated_by"
    t.integer  "created_by"
    t.string   "newsletter_membership"
    t.integer  "company_user_company_id"
    t.string   "question"
    t.string   "answer"
    t.integer  "subscriber_id"
    t.integer  "company_revenue_size_id"
  end

  add_index "subscribers", ["business_size_id"], name: "index_subscribers_on_business_size_id", using: :btree
  add_index "subscribers", ["campaign_id"], name: "index_subscribers_on_campaign_id", using: :btree
  add_index "subscribers", ["email_id"], name: "index_subscribers_on_email_id", using: :btree
  add_index "subscribers", ["first_name"], name: "index_subscribers_on_first_name", using: :btree
  add_index "subscribers", ["industry_id"], name: "index_subscribers_on_industry_id", using: :btree
  add_index "subscribers", ["institution_name"], name: "index_subscribers_on_institution_name", using: :btree
  add_index "subscribers", ["job_role_id"], name: "index_subscribers_on_job_role_id", using: :btree
  add_index "subscribers", ["last_login"], name: "index_subscribers_on_last_login", using: :btree
  add_index "subscribers", ["last_name"], name: "index_subscribers_on_last_name", using: :btree
  add_index "subscribers", ["level_of_aquisition_id"], name: "index_subscribers_on_level_of_aquisition_id", using: :btree
  add_index "subscribers", ["subscriber_id"], name: "index_subscriber_on_subscribers_id", using: :btree

  create_table "widgets", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
