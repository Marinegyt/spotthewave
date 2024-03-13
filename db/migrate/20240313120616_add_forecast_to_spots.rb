class AddForecastToSpots < ActiveRecord::Migration[7.1]
  def change
    add_column :spots, :forecast, :jsonb, default: "[[]]"
  end
end
