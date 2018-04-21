# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  image           :string
#  bio             :text
#  hometown        :string
#  interests       :text
#  email           :string
#  admin           :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

class User < ApplicationRecord
  has_many :friendships
  has_many :friends, :through => :friendships

  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

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
