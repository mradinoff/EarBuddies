json.extract! message, :id, :content, :user_id, :event_id, :user_name, :event_name, :participants, :created_at, :updated_at
json.url message_url(message, format: :json)
