class User < ApplicationRecord
  has_many :friendships
  has_many :friends, :through => :friendships
  has_and_belongs_to_many :events
end
