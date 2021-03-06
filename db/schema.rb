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

ActiveRecord::Schema.define(:version => 20101008202904) do

  create_table "factors", :force => true do |t|
    t.integer   "speciman_id"
    t.integer   "j_n"
    t.string    "j_title"
    t.string    "j_def"
    t.integer   "pasp_n"
    t.string    "pasp_title"
    t.string    "pasp_reqmt"
    t.string    "pasp_def"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "fvalues", :force => true do |t|
    t.integer   "factor_id"
    t.integer   "shipment_id"
    t.string    "fvalue"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "prms", :force => true do |t|
    t.string   "title"
    t.string   "pval"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shipments", :force => true do |t|
    t.integer   "speciman_id"
    t.string    "batch_number"
    t.integer   "check_number"
    t.date      "manufdt"
    t.date      "releasedt"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.date      "expiredt"
  end

  create_table "specimen", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title_upcased"
    t.integer  "priord",        :default => 0
  end

end
