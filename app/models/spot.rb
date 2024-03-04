class Spot < ApplicationRecord
  has_many :reviews, :bookmarks, :photos
end
