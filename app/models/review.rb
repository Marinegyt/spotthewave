class Review < ApplicationRecord
  belongs_to :spot
  belongs_to :user

  validates :content, presence: true
  validates :rate, numericality: { only_integer: true }, inclusion: 1..5
end
