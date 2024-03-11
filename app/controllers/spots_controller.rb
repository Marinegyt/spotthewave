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
    @reviews = @spot.reviews
    @review = Review.new
    @average_difficulty = Review.average_difficulty(@spot)
    @average_rating = Review.average_rating(@spot)
    @bookmark = current_user.bookmarks.find_by(spot: @spot)
    # @weather_info = WeatherService.call(@spot.latitude, @spot.longitude)

  end

  # private

  # def spot_params
  #   params.require(:spot).permit(
  #     bookmark_attributes: %i[spot_id user_id]
  #   )
  # end
end
