class ChangeRateFromFloatToIntegerInReviews < ActiveRecord::Migration[7.1]
  def change
    change_column :reviews, :rate, :integer
  end
end
