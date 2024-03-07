class Photo < ApplicationRecord
  belongs_to :spot
  belongs_to :user
  has_one_attached :image

  def feed_content
    return { image_tag: image.key }
  end
end
