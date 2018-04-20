json.extract! venue, :id, :location, :name, :url, :address, :created_at, :updated_at
json.url venue_url(venue, format: :json)
