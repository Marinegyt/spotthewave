class SpotsController < ApplicationController

  def show
    @spot = Spot.find(params[:id])
    @average_difficulty = Review.average_difficulty(@spot)
    @average_rating = Review.average_rating(@spot)
  end

end
