# == Schema Information
#
# Table name: venues
#
#  id         :integer          not null, primary key
#  location   :string
#  name       :string
#  url        :string
#  address    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Venue < ApplicationRecord
  has_many :events
  geocoded_by :address
  after_validation :geocode
end
