class CreateTravels < ActiveRecord::Migration[6.0]
  def change
    create_table :travels do |t|
      t.string :country_name
      t.string :current_status
      t.json :closed_exceptions
      t.integer :days_to_quarantine
      t.json :international_travel_note
      t.json :international_travel_requirements
      t.string :country_flag
      t.json :lat_long

      t.timestamps
    end
  end
end
