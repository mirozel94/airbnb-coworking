class Space < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :address, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :capacity, presence: true
  validates :rating, presence: true
  validates :price, presence: true
end
