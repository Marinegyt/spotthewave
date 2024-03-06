class SpotsController < ApplicationController

  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
    @average_difficulty = Review.average_difficulty(@spot)
  end

  def top
    @spots = Spot.where(rate: 5)
  end
end
