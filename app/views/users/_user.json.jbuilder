json.extract! user, :id, :name, :image, :avatar, :bio, :hometown, :interests, :friendships, :friends, :email, :password_digest, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)
