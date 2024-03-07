class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews
  has_many :bookmarks
  has_many :favorites, through: :bookmarks, source: :spot
  has_many :photos

  validates :nickname, presence: true, length: { maximum: 50 }

  has_many :follows_as_followers, foreign_key: :follower_id, class_name: "Follow"
  has_many :follows_as_followeds, foreign_key: :followed_id, class_name: "Follow"

  has_many :followers, through: :follows_as_followeds
  has_many :followeds, through: :follows_as_followers

  def feed
    feed = reviews_for_feed + follows_for_feed

    feed.sort do |first_element, second_element|
      second_element.created_at <=> first_element.created_at
    end
  end

  private

  def reviews_for_feed
    favorites.order(created_at: :desc).first(10).flat_map(&:reviews)
  end

  def follows_for_feed
    follows_as_followeds.order(created_at: :desc).first(10)
  end
end
