json.extract! venue, :id, :location, :name, :url, :address, :latitude, :longitude, :created_at, :updated_at, :events
json.url venue_url(venue, format: :json)
