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

ActiveRecord::Schema.define(version: 20140724075037) do

  create_table "channels", force: true do |t|
    t.string   "channelName"
    t.integer  "fid"
    t.integer  "sort"
    t.string   "url"
    t.text     "imageSrc"
    t.text     "fileSrc"
    t.text     "videoSrc"
    t.integer  "hits"
    t.text     "content"
    t.string   "tags"
    t.text     "description"
    t.date     "addtime"
    t.string   "group"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contents", force: true do |t|
    t.integer  "channleID"
    t.string   "channelName"
    t.string   "title"
    t.string   "subtitle"
    t.text     "imageSrc"
    t.string   "tags"
    t.text     "description"
    t.date     "addtime"
    t.integer  "hits"
    t.string   "author"
    t.string   "source"
    t.text     "linkUrl"
    t.text     "content"
    t.text     "fileSrc"
    t.text     "videoSrc"
    t.integer  "ifhot"
    t.integer  "ifrecommend"
    t.integer  "iftop"
    t.integer  "sort"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
