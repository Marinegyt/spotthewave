class Spot < ApplicationRecord
  has_many :reviews
  has_many :bookmarks
  has_many :photos
  has_one_attached :photo

  DIFFICULTY = ['Facile', 'Modéré', 'Difficile']
  validates :difficulty, inclusion: { in: DIFFICULTY }
end
