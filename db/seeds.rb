require 'rest-client'
require 'json'
require_relative '../app/park.rb'
require 'pry'

park_data = RestClient.get('https://developer.nps.gov/api/v1/parks?page=2&api_key=mjIjHyHdkl8frtoXIFXG3vmqRXu1C2PqKAkDxjyG&limit=500')
parks = JSON.parse(park_data)

parks["data"].each do |park|
  Park.create(
  states: park["states"],
  latitude_longitude: park["latLong"],
  description: park["description"],
  designation: park["designation"],
  park_code: park["parkCode"],
  park_id: park["id"],
  directions_info: park["directionsInfo"],
  directions_url: park["directionsUrl"],
  full_name: park["fullName"],
  url: park["url"],
  weather_info: park["weatherInfo"],
  name: park["name"]
  )
end

# binding.pry
# true
