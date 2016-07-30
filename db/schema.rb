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

ActiveRecord::Schema.define(version: 20160729231802) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bosses", force: :cascade do |t|
    t.string   "email"
    t.string   "twitter"
    t.string   "linked"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
    t.string   "name"
    t.string   "twitter_bio"
    t.string   "twitter_followers"
    t.string   "twitter_following"
    t.string   "twitter_site"
    t.string   "twitter_avatar"
    t.string   "company"
    t.string   "gender"
    t.string   "location"
    t.string   "facebook"
    t.string   "github_handle"
    t.string   "github_avatar"
    t.string   "github_company"
    t.string   "github_blog"
    t.string   "github_followers"
    t.string   "github_following"
    t.string   "google"
    t.string   "angellist"
    t.string   "angel_bio"
    t.string   "angel_blog"
    t.string   "angel_avatar"
    t.string   "about_handle"
    t.string   "about_bio"
    t.string   "about_avatar"
    t.string   "gravatar"
    t.string   "valve"
    t.string   "gravatar_avatar"
    t.integer  "descomp_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "subject"
    t.string   "phone"
    t.string   "yourname"
    t.string   "email"
    t.string   "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "descomps", force: :cascade do |t|
    t.string   "company"
    t.string   "twitter"
    t.string   "linked"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
    t.string   "tag"
    t.string   "desc"
    t.string   "phone"
    t.string   "email"
    t.string   "sector"
    t.string   "industrygroup"
    t.string   "industry"
    t.string   "subindustry"
    t.string   "tags"
    t.string   "description"
    t.string   "founded"
    t.string   "address"
    t.string   "logo"
    t.string   "facebook"
    t.string   "twitbio"
    t.string   "followers"
    t.string   "following"
    t.string   "twitlocate"
    t.string   "twitsite"
    t.string   "avatar"
    t.string   "url"
    t.string   "boss_id"
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "start_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resumes", force: :cascade do |t|
    t.string   "address"
    t.string   "phone"
    t.string   "school1"
    t.string   "school2"
    t.string   "school3"
    t.string   "cdd1"
    t.string   "cdd2"
    t.string   "cdd3"
    t.string   "excomp1"
    t.string   "excomp2"
    t.string   "excomp3"
    t.string   "expos1"
    t.string   "expos2"
    t.string   "expos3"
    t.string   "exstart1"
    t.string   "exstart2"
    t.string   "exstart3"
    t.string   "exend1"
    t.string   "exend2"
    t.string   "exend3"
    t.string   "intcom1"
    t.string   "intcomp2"
    t.string   "intcomp3"
    t.string   "intpos1"
    t.string   "intpos2"
    t.string   "intpos3"
    t.string   "intstart1"
    t.string   "intstart2"
    t.string   "intstart3"
    t.string   "cert1"
    t.string   "cert2"
    t.string   "cert3"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "intend1"
    t.string   "intend2"
    t.string   "intend3"
    t.integer  "user_id"
    t.string   "addresscity"
    t.string   "addressstate"
    t.string   "addresszip"
    t.string   "website"
    t.string   "linked"
    t.string   "expos11about"
    t.string   "expos12about"
    t.string   "expos13about"
    t.string   "expos14about"
    t.string   "expos15about"
    t.string   "expos21about"
    t.string   "expos22about"
    t.string   "expos23about"
    t.string   "expos24about"
    t.string   "expos25about"
    t.string   "expos31about"
    t.string   "expos32about"
    t.string   "expos33about"
    t.string   "expos34about"
    t.string   "expos35about"
    t.string   "intcomp11about"
    t.string   "intcomp12about"
    t.string   "intcomp13about"
    t.string   "intcomp14about"
    t.string   "intcomp15about"
    t.string   "intcomp21about"
    t.string   "intcomp22about"
    t.string   "intcomp23about"
    t.string   "intcomp24about"
    t.string   "intcomp25about"
    t.string   "intcomp31about"
    t.string   "intcomp32about"
    t.string   "intcomp33about"
    t.string   "intcomp34about"
    t.string   "intcomp35about"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "resume"
    t.string   "sq1"
    t.string   "sq2"
    t.string   "sq3"
    t.string   "sq4"
    t.string   "sq5"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
