ActiveRecord::Schema.define(version: 2020_10_19_135139) do

  create_table "travels", force: :cascade do |t|
    t.string "country_name"
    t.string "current_status"
    t.json "closed_exceptions"
    t.integer "days_to_quarantine"
    t.json "international_travel_note"
    t.json "international_travel_requirements"
    t.string "country_flag"
    t.json "lat_long"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
