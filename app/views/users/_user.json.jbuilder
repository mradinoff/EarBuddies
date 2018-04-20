json.extract! user, :id, :name, :image, :bio, :hometown, :interests, :friendships, :email, :password_digest, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)
