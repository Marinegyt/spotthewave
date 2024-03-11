class SpotsController < ApplicationController
  def index
    if params[:search].present?
      @spots = Spot.search_by_name_and_city(params[:search])
    else
      @spots = Spot.all
    end
    @spots = Spot.geocoded
    @users = User.all
    @reviews = Review.all
    @top_spots = Spot
                 .joins(:reviews)
                 .select("spots.*, AVG(reviews.rate) AS average_ratings")
                 .group("spots.id")
                 .order("average_ratings DESC")
                 .first(5)
    @markers = @spots.geocoded.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {spot: spot}),
        marker_html: render_to_string(partial: "marker", locals: {spot: spot}),
      }
    end
  end

  def show
    @spot = Spot.find(params[:id])
    @reviews = @spot.reviews
    @review = Review.new
    @average_difficulty = Review.average_difficulty(@spot)
    @average_rating = Review.average_rating(@spot)

    # @water_infos = WeatherService.call_water_weather(@spot.latitude, @spot.longitude)
    @days = call_weather(@spot.latitude, @spot.longitude)
  end

  private

  def call_weather(latitude,longitude)
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

  def days
    call_weather(latitude,longitude)
  end
end
