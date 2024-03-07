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
    followers
    reviews = []
    favorites.first(10).each do |spot|
      reviews << spot.reviews
    end
    return reviews.flatten + followers.first(10)
  end

  def feed_content
    return { description: "#{nickname} vous suit !" }
  end
end
