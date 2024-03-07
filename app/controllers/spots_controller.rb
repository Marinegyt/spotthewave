class SpotsController < ApplicationController

  def index
    @spots = Spot.all
    @users = User.all
    @reviews = Review.all
    @top_spots = Spot
                 .joins(:reviews)
                 .select("spots.*, AVG(reviews.rate) AS average_ratings")
                 .group("spots.id")
                 .order("average_ratings DESC")
                 .first(5)
    # @markers = @users.geocoded.map do |user|
    #   {
    #     lat: user.latitude,
    #     lng: user.longitude
    #   }
    # end
  end

  def show
    @spot = Spot.find(params[:id])
    @review = @spot.reviews
    @average_difficulty = Review.average_difficulty(@spot)
    @average_rating = Review.average_rating(@spot)
  end


end
