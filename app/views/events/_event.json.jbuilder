json.extract! event, :name, :description, :id, :date, :venue_id, :ticket_url, :genre, :image, :created_at, :updated_at
json.url event_url(event, format: :json)
