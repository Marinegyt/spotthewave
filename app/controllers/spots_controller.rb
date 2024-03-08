class SpotsController < ApplicationController
  def index
    @spots = Spot.all
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
    @review = @spot.reviews
    @average_difficulty = Review.average_difficulty(@spot)
    @average_rating = Review.average_rating(@spot)
    # @weather_info = WeatherService.call(@spot.latitude, @spot.longitude)
  end
end
