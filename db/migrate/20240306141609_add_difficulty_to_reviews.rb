class AddDifficultyToReviews < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :difficulty, :integer
  end
end
