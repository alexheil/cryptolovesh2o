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

ActiveRecord::Schema.define(version: 20210207191037) do

  create_table "addons", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.text     "description"
    t.text     "features"
    t.integer  "time_period",              default: 0
    t.integer  "one_time_price"
    t.string   "stripe_one_time_price_id"
    t.integer  "monthly_price"
    t.string   "stripe_monthly_price_id"
    t.string   "slug"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "slug"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["confirmation_token"], name: "index_admins_on_confirmation_token", unique: true
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_admins_on_unlock_token", unique: true
  end

  create_table "bookmarks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "u_post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["u_post_id"], name: "index_bookmarks_on_u_post_id"
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "display_name"
    t.string   "title"
    t.string   "content"
    t.string   "email"
    t.string   "slug"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "customs", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.text     "description"
    t.string   "link"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "emails", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "follows", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["followed_id"], name: "index_follows_on_followed_id"
    t.index ["follower_id", "followed_id"], name: "index_follows_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_follows_on_follower_id"
    t.index ["user_id"], name: "index_follows_on_user_id"
  end

  create_table "packages", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.text     "description"
    t.text     "features"
    t.integer  "monthly_price"
    t.string   "stripe_monthly_price_id"
    t.string   "slug"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "title"
    t.string   "image"
    t.text     "description"
    t.string   "readtime"
    t.text     "content"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "tldr"
    t.index ["category_id"], name: "index_posts_on_category_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "addon_id"
    t.string   "stripe_subscription_id"
    t.string   "stripe_charge_id"
    t.integer  "use_your_card",          default: 1
    t.integer  "status",                 default: 0
    t.string   "slug"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["addon_id"], name: "index_purchases_on_addon_id"
    t.index ["user_id"], name: "index_purchases_on_user_id"
  end

  create_table "settings", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "tagline"
    t.string   "logo"
    t.string   "slug"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "pinterest"
    t.string   "instagram"
    t.string   "linkedin"
    t.string   "youtube"
    t.string   "twitch"
    t.string   "discord"
    t.string   "google_analytics"
    t.string   "google_data_ad_client_id"
    t.integer  "hero_style",                default: 0
    t.integer  "hero_post_id"
    t.integer  "header_style",              default: 0
    t.integer  "header_link_style",         default: 0
    t.integer  "header_background_style",   default: 0
    t.integer  "header_border_style",       default: 3
    t.integer  "header_logo_allow",         default: 0
    t.integer  "header_title_allow",        default: 1
    t.integer  "header_title_size",         default: 1
    t.integer  "header_title_weight",       default: 1
    t.integer  "menu_style",                default: 0
    t.integer  "footer_style",              default: 0
    t.integer  "footer_border_style",       default: 3
    t.integer  "footer_background_style",   default: 0
    t.integer  "footer_social_media_allow", default: 1
    t.integer  "footer_tagline_allow",      default: 1
    t.integer  "blog_style",                default: 0
    t.integer  "post_style",                default: 1
    t.integer  "post_comments_allow",       default: 1
    t.integer  "post_comments_style",       default: 0
    t.integer  "background_style",          default: 0
    t.integer  "animation_time",            default: 1
    t.integer  "button_style",              default: 1
    t.integer  "shadows",                   default: 0
    t.integer  "border_radius",             default: 3
    t.integer  "padding",                   default: 3
    t.integer  "line_height",               default: 0
    t.integer  "font_weight",               default: 1
    t.integer  "font_size",                 default: 1
    t.integer  "font_family",               default: 0
    t.integer  "font_letterspacing",        default: 1
    t.integer  "title_size",                default: 1
    t.integer  "title_weight",              default: 2
    t.integer  "title_align",               default: 0
    t.integer  "title_family",              default: 0
    t.integer  "link_style",                default: 0
    t.integer  "link_weight",               default: 2
    t.string   "color_main",                default: "#fc9580"
    t.string   "color_accent",              default: "#80e7fc"
    t.integer  "color_background",          default: 0
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.index ["user_id"], name: "index_settings_on_user_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.text     "description"
    t.string   "link"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "package_id"
    t.string   "stripe_subscription_id"
    t.integer  "use_your_card",          default: 1
    t.integer  "status",                 default: 0
    t.string   "slug"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["package_id"], name: "index_subscriptions_on_package_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "u_post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id", "u_post_id"], name: "index_taggings_on_tag_id_and_u_post_id", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["u_post_id"], name: "index_taggings_on_u_post_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string   "title"
    t.string   "slug"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "taggings_count"
  end

  create_table "tutorials", force: :cascade do |t|
    t.integer  "package_id"
    t.integer  "addon_id"
    t.string   "title"
    t.string   "image"
    t.text     "description"
    t.string   "readtime"
    t.text     "content"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "u_blocks", force: :cascade do |t|
    t.integer  "u_post_id"
    t.integer  "block_type"
    t.string   "image"
    t.text     "content"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["u_post_id"], name: "index_u_blocks_on_u_post_id"
  end

  create_table "u_comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "u_post_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["u_post_id"], name: "index_u_comments_on_u_post_id"
    t.index ["user_id"], name: "index_u_comments_on_user_id"
  end

  create_table "u_posts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "image"
    t.text     "description"
    t.string   "readtime"
    t.text     "content"
    t.string   "slug"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "bookmarks_count"
    t.index ["user_id"], name: "index_u_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.integer  "status",                 default: 0
    t.string   "customer_id"
    t.string   "site_link"
    t.string   "http_domain"
    t.string   "https_domain"
    t.string   "slug",                   default: "", null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "domain_name"
    t.string   "username"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["slug"], name: "index_users_on_slug", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end
