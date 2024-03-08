class Review < ApplicationRecord
  AUTHORIZED_RATINGS = (1..5)
  DIFFICULTIES = { débutant: 1, confirmé: 2, expert: 3 }
  enum difficulty: DIFFICULTIES

  belongs_to :spot
  belongs_to :user
  validates :content, presence: true
  validates :rate, numericality: true, inclusion: { in: AUTHORIZED_RATINGS }

  def self.average_difficulty(spot)
    count = spot.reviews.count
    return "Indeterminé" if count.zero?

    sum_difficulty = spot.reviews.sum(:difficulty)
    average = (sum_difficulty.to_f / count).round

    case average
    when 1
      "Débutant"
    when 2
      "Confirmé"
    when 3
      "Expert"
    else
      "Indéterminé"
    end
  end

  def self.average_rating(spot)
    count = spot.reviews.count
    return 0 if count.zero?

    ((spot.reviews.sum(:rate).to_f / count) * 2).round / 2.0
  end

  def feed_content
    return { type: :review, instance: self }
  end
end
