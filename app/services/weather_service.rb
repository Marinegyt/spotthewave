class WeatherService
  def self.call_water_weather(latitude, longitude)
    url = "https://api.stormglass.io/v2/weather/point"
    params = {
      lat: latitude,
      lng: longitude,
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
        if Time.zone.today + i.days == Date.parse(hour["time"])
          array << hour
        end
      end
      my_data << array
    end
    my_data
  end

  def self.call(latitude, longitude)
    url = "http://api.weatherapi.com/v1/forecast.json"
    params = {
      q: "#{latitude},#{longitude}",
      days: 7
    }
    key = { key: ENV["WEATHER_API_KEY"] }
    response = Faraday.get(url, params, key)
    parsed_response = JSON.parse(response.body)

    my_days = []
    parsed_response["forecast"]["forecastday"].each do |day|
      my_days << day["hour"]
    end
    my_days
  end
end
