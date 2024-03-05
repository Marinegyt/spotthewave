class Spot < ApplicationRecord
  has_many :reviews
  has_many :bookmarks
  has_many :photos

  DIFFICULTY = ['Facile', 'Modéré', 'Difficile']
  validates :difficulty, inclusion: { in: DIFFICULTY }
end
