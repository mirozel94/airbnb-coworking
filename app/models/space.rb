class Space < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_many :bookings
  belongs_to :user
  validates :address, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
  mount_uploader :photo, PhotoUploader
end
