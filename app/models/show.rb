class Show < ApplicationRecord
  belongs_to :user
  belongs_to :promoter


  def total_gross
    self.merch + self.
  end
end


# create_table "shows", force: :cascade do |t|
#   t.string "venue"
#   t.date "date"
#   t.time "loadin"
#   t.decimal "guarantee"
#   t.decimal "merch"
#   t.boolean "green_room"
#   t.text "wifi"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.bigint "user_id", null: false
#   t.bigint "promoter_id", null: false
#   t.index ["promoter_id"], name: "index_shows_on_promoter_id"
#   t.index ["user_id"], name: "index_shows_on_user_id"
# end
