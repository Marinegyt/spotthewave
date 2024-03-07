class Spot < ApplicationRecord
  has_many :reviews
  has_many :bookmarks
  has_many :photos
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :description, presence: true
  validates :city, presence: true

end
