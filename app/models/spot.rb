class Spot < ApplicationRecord
  has_many :reviews
  has_many :bookmarks
  has_many :photos
end
