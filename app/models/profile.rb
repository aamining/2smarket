class Profile < ApplicationRecord
  belongs_to :user
  geocoded_by :suburb
  after_validation :geocode, :if => :suburb_changed?
end
