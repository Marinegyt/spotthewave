class Follow < ApplicationRecord
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"

  def feed_content
    return { type: :follow, instance: self }
  end
end
