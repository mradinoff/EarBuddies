# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  date        :datetime
#  venue_id    :integer
#  ticket_url  :string
#  genre       :string
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  name        :text
#  description :text
#

class Event < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :venue
  has_many :messages, dependent: :destroy
end
