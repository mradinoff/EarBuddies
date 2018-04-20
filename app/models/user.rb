class User < ApplicationRecord
  has_many :friendships
  has_many :friends, :through => :friendships
  has_and_belongs_to_many :events

  has_secure_password

  def self.from_token_payload payload
    payload["sub"]
  end

  def to_token_payload
    {
      sub: id,
      email: email,
      admin: admin
    }
  end
end
