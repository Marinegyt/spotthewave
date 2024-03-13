class AddForecastMarineWeatherToSpots < ActiveRecord::Migration[7.1]
  def change
    add_column :spots, :forecast_marine_weather, :jsonb, default: "{}"
  end
end
