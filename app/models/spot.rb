class Spot < ApplicationRecord
  has_many :reviews
  has_many :bookmarks
  has_many :photos
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :description, presence: true
  validates :city, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_city,
    against: [:name, :city],
    using: {
      tsearch: { prefix: true }
    }
end
