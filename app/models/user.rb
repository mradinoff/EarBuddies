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
  mount_uploader :avatar, AvatarUploader
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :messages

  validates :email, presence: true
  validates_format_of :email, :with => /@/, message: "Please enter a valid email address"
  validates :password, confirmation: true


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
      admin: admin,
      name: name
    }
  end


  def matched
    friendships.where(:active => true).map do |friendship|
      if friendship.user == self
        friendship.friend
      else
        friendship.user
      end
    end
  end

  def pending
    friendships.where(:active => false)
  end

end
