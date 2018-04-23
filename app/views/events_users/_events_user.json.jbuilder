json.extract! events_user, :id, :event_id, :user_id, :created_at, :updated_at
json.url events_user_url(events_user, format: :json)
