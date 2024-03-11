class SpotsController < ApplicationController
  def index
    @spots = Spot.geocoded
    @users = User.all
    @reviews = Review.all
    if params[:search].present?
      @spots = Spot.search_by_name_and_city(params[:search])
    else
      @spots = Spot.all
    end
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
    @distance_from_spot = Geocoder::Calculations.distance_between([current_user.latitude, current_user.longitude], [@spot.latitude, @spot.longitude]).round
    @user_review = current_user.reviews.find_by(spot: @spot)
    @reviews = @spot.reviews
    @review = Review.new
    @average_difficulty = Review.average_difficulty(@spot)
    @average_rating = Review.average_rating(@spot)
    # @weather_info = WeatherService.call(@spot.latitude, @spot.longitude)
  end
end
