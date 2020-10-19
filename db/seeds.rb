Travel.destroy_all

require 'pry'
require 'json'

file = File.read('./lib/travel_restrictions.json')
data_hash = JSON.parse(file)

data_hash["result"].each do |result|
    Travel.create(
        country_name: result["country_name"],
        current_status: result["current_status"],
        closed_exceptions: result["closed_exceptions"],
        days_to_quarantine: result["days_to_quarantine"],
        international_travel_note: result["international_travel_notes"],
        international_travel_requirements: result["international_travel_notes"],
        country_flag: result["country_flag"],
        lat_long: result["lat_long"]
    )
end