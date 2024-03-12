class Photo < ApplicationRecord
  belongs_to :spot
  belongs_to :user
  has_many_attached :images

  # def feed_content
  #   return { image_tag: image.key }
  # end
end
