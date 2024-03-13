class Review < ApplicationRecord
  AUTHORIZED_RATINGS = (1..5)
  DIFFICULTIES = { débutant: 1, confirmé: 2, expert: 3 }
  enum difficulty: DIFFICULTIES
  belongs_to :spot
  belongs_to :user
  has_many :likes, dependent: :destroy
  validates :content, presence: true
  validates :rate, numericality: true, inclusion: { in: AUTHORIZED_RATINGS }
  validate :unique_review_per_spot

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

  private

  def unique_review_per_spot
    if Review.exists?(user_id: user_id, spot_id: spot_id)
      errors.add(:base, "Vous ne pouvez pas créer plusieurs évaluations pour le même spot.")
    end
  end
end
