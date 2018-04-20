class Venue < ApplicationRecord
  has_many :events, :optional => true
end
