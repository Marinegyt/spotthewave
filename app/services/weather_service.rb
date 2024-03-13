class WeatherService
  def self.call_water_weather(spot)
    url = "https://api.stormglass.io/v2/weather/point"
    params = {
      lat: spot.latitude,
      lng: spot.longitude,
      params: "waterTemperature,waveHeight,windDirection,windSpeed",
      end_time: Time.zone.today.to_time + 8.days
    }
    headers = { "Authorization" => ENV["STORMYGLASS_API_KEY"] }
    response = Faraday.get(url, params, headers)
    parsed_response = JSON.parse(response.body)

    my_data = []
    7.times do |i|
      array = []
      parsed_response["hours"].each do |hour|
        if Time.zone.today + i.days == Date.parse(hour["time"]) &&
          (6..21).include?(DateTime.parse(hour["time"]).hour)
          array << hour
        end
      end
      my_data << array
    end
    spot.update!(forecast_marine_weather: my_data.to_json())
  end

  def self.call(spot)
    url = "http://api.weatherapi.com/v1/forecast.json"
    params = {
      q: "#{spot.latitude},#{spot.longitude}",
      days: 7
    }
    key = { key: ENV["WEATHER_API_KEY"] }
    response = Faraday.get(url, params, key)
    parsed_response = JSON.parse(response.body)

    my_days = []
    parsed_response["forecast"]["forecastday"].each do |day|
      my_days << day["hour"].select { |element| (6..21).include?(DateTime.parse(element["time"]).hour) }
    end

    spot.update!(forecast: my_days.to_json())
  end
end
