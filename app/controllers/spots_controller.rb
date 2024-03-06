class SpotsController < ApplicationController

  def show
    @spot = Spot.find(params[:id])
    @average_difficulty = Review.average_difficulty(@spot)
  end

end
