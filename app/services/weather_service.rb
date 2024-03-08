class WeatherService
  def call_water_weather(latitude, longitude)
    # url = "https://api.stormglass.io/v2/weather/point"
    # params = {
    #   lat: latitude,
    #   lng: longitude,
    #   params: "waterTemperature,waveHeight,windDirection,windSpeed"
    # }
    # headers = {"Authorization" => ENV["STORMYGLASS_API_KEY"]}
    # response = Faraday.get(url, params, headers)
    # parsed_response = JSON.parse(response.body)
    parsed_response = {"hours"=>
      [{"airTemperature"=>{"dwd"=>10.03, "noaa"=>7.29, "sg"=>10.03},
        "time"=>"2024-03-08T00:00:00+00:00",
        "waterTemperature"=>{"meto"=>10.62, "noaa"=>6.55, "sg"=>10.62}},
       {"airTemperature"=>{"dwd"=>9.56, "noaa"=>7.13, "sg"=>9.56}, "time"=>"2024-03-08T01:00:00+00:00", "waterTemperature"=>{"meto"=>10.61, "noaa"=>6.48, "sg"=>10.61}},
       {"airTemperature"=>{"dwd"=>9.28, "noaa"=>6.96, "sg"=>9.28}, "time"=>"2024-03-08T02:00:00+00:00", "waterTemperature"=>{"meto"=>10.59, "noaa"=>6.42, "sg"=>10.59}}]}

    my_hours = []
    parsed_response["hours"].each do |hour|
      my_data = {}
      hour.each do |key, value|
        next if key == "time"
        my_data[key] = value["noaa"]
      end
      my_hours << my_data
    end
    my_hours
  end

  def call_weather(latitude,longitude)

  end

  end
end
