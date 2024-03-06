class RemoveDifficultyFromSpots < ActiveRecord::Migration[7.1]
  def change
    remove_column :spots, :difficulty, :string
  end
end
