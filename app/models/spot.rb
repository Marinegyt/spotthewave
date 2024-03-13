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

  def weather
    WeatherService.call(self.latitude, self.longitude).first.select do |key, _value|
      DateTime.parse(key["time"]).hour == Time.zone.now.hour + 1
    end
  end

  def marine_weather
    WeatherService.call_water_weather(self.latitude, self.longitude).first.select do |key, _value|
      DateTime.parse(key["time"]).hour == Time.zone.now.hour + 1
    end
  end
end
